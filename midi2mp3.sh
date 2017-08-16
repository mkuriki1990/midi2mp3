#/bin/zsh

# midi から wav ファイルに変換
for files in *.midi
do
	fluidsynth -F ${files/midi/wav} ./TimGM6mb.sf2 $files
done

# wav を サンプリングレート 8 bit の mp3 に変換
for files in *.wav
do
	lame --bitwidth 8 -b 8 $files
done

# iPhone 版アプリでは midi ファイルが直接再生できないため, 
# mp3 ファイルに変換して利用する. 
# midi -> wav -> mp3 に変換する
# 変換には fluidsynth コマンドを用い, シーケンサのソースファイルとして TimGM6mb.sf2 を利用する. 
# mp3 に変換する際には lame コマンドを用いて サンプリングレートを 8bit に変換する. 
