# https://jimaru.blog/programming/python/insert-text-to-file/
# https://www.headboost.jp/python-strings-variables/
# -*- coding: utf-8 -*-
# python write.pyで実行可能
# 変数名とかわかりやすくリファクタしてzennに投稿する
import datetime
timestamp = datetime.datetime.now().strftime('%Y/%m/%d %H:%M:%S')
with open('file.txt') as reader:
    s = reader.read()
text = "# {timestamp}\n## 番号\n### 結果\n### output"
result = text.format(timestamp=timestamp)
s = result + s
     
with open('file.txt', 'w') as writer:
    writer.write(s)
