clc,clear
a=textread('data83.txt');
xt=a(:,[2:2:end]);xt=nonzeros(xt); % ��ԭʼ���ݰ���ʱ���Ⱥ����չ��������
yt=diff(xt); % ��ԭʼ���ݽ��в�ֱ任
m=armax(yt,[2,1]) % ���armaģ��
ythat=forecast(m,yt,10) % ����yt��10��Ԥ��ֵ
xthat=xt(end)+cumsum(ythat) % ����ԭʼ���ݵ�Ԥ��ֵ