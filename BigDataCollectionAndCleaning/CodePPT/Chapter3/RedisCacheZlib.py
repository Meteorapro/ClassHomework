"""
    Redis缓存模块
"""

import json
import zlib

from redis import StrictRedis
from datetime import timedelta


class RedisCache:

    # 模块初始化
    def __init__(self, client=None,
                 expires=timedelta(days=30),
                 encoding='utf-8',compress=True):

        # 连接到redis,如果没有设置连接，则连接到本地服务器
        if client is None:
            self.client = StrictRedis(host='localhost', port=6379, db=0)
        else:
            self.client = client

        self.expires = expires
        self.compress=compress
        self.encoding = encoding

    # 关闭Redis服务器
    def close(self):
        if self.client is not None:
            self.client.close()

    # 从目标网址的Redis服务器中获取数据
    def __getitem__(self, url):
        # 获取字节数据
        record = self.client.get(url)
        if record:
            # 读取数据之前先解压
            if self.compress:
                record=zlib.decompress(record)
            return json.loads(record.decode(self.encoding))
        else:
            raise KeyError(url + 'does ont exist')

    # 使用Redis保存数据
    def __setitem__(self, url, result):
        data = json.dumps(result)
        data = bytes(data, self.encoding)
        # 写入数据之前先压缩
        if self.compress:
            data=zlib.compress(data)
        self.client.setex(url, self.expires, data)

