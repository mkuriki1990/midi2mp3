#/bin/zsh

# midi ���� wav �ե�������Ѵ�
for files in *.midi
do
	fluidsynth -F ${files/midi/wav} ./TimGM6mb.sf2 $files
done

# wav �� ����ץ�󥰥졼�� 8 bit �� mp3 ���Ѵ�
for files in *.wav
do
	lame --bitwidth 8 -b 8 $files
done

# iPhone �ǥ��ץ�Ǥ� midi �ե����뤬ľ�ܺ����Ǥ��ʤ�����, 
# mp3 �ե�������Ѵ��������Ѥ���. 
# midi -> wav -> mp3 ���Ѵ�����
# �Ѵ��ˤ� fluidsynth ���ޥ�ɤ��Ѥ�, �������󥵤Υ������ե�����Ȥ��� TimGM6mb.sf2 �����Ѥ���. 
# mp3 ���Ѵ�����ݤˤ� lame ���ޥ�ɤ��Ѥ��� ����ץ�󥰥졼�Ȥ� 8bit ���Ѵ�����. 
