#/bin/zsh

# 引数のチェックをする
if [ $# -eq 0 ]; then
	echo "引数に midi ファイルのパスが必要"
	exit 1
fi

# midi から wav ファイルに変換
# for files in *.midi
for files in "$@"
do
	fluidsynth -F ${files/midi/wav} ./TimGM6mb.sf2 $files # ${var/str1/str2} は var の中で str1 を str2 に置換
done

# wav を サンプリングレート 8 bit の mp3 に変換
for files in "$@"
do
	echo $files
	lame --bitwidth 8 -b 8 ${files/midi/wav}
	# 仕上げに .wav を削除
	rm ${files/midi/wav}
done


# iPhone 版アプリでは midi ファイルが直接再生できないため, 
# mp3 ファイルに変換して利用する. 
# midi -> wav -> mp3 に変換する
# 変換には fluidsynth コマンドを用い, シーケンサのソースファイルとして TimGM6mb.sf2 を利用する. 
# mp3 に変換する際には lame コマンドを用いて サンプリングレートを 8bit に変換する. 
