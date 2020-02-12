# 寮歌アプリ用 midi/mp3 ファイル変換スクリプト
[寮歌アプリ iOS 版](https://www.ep.sci.hokudai.ac.jp/~mkuriki/phone/ryoka/)で用いる音声ファイルを変換するスクリプト. 
iOS では midi 音源を再生できないので、mp3 に変換してから内臓する. 

またアプリ内臓用の低音質 mp3 を生成するスクリプトも一緒においておく. 

## スクリプト
* midi2mp3.sh : midi ファイルを mp3 ファイルに変換するためのスクリプト
* TimGM6mb.sf2 : midi 音源変換用のサウンドフォント
* mp3_converter.sh : 音声 mp3 ファイルを iOS 内臓するため、音質を下げて, ファイル容量を下げるためのスクリプト
    * lame コマンドに依存する
