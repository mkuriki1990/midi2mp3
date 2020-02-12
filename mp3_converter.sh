#!/bin/sh
# 寮歌アプリ内臓用の音質を下げるためのスクリプト
# 引数に変換したい mp3 ファイルを入れる

filename=${1%.*} # 拡張子を除いたファイル名のみ抜き出し
lame -m s -a --bitwidth 8 -b 8 --scale 16 ${filename}.mp3 ${filename}v.mp3
