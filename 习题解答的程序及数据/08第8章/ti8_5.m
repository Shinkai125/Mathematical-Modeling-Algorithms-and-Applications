clc, clear
a=textread('data84.txt'); %��ԭʼ���ݱ��浽���ı��ļ�data84.txt
a=a'; a=nonzeros(a); n=length(a);
plot(a,'.-')
for i=11:n
    b(i-10)=a(i)-a(i-10); %���м��ڲ�ֱ任
end
b=b'; figure,plot(b,'.-')
figure, subplot(121), autocorr(b)
subplot(122), parcorr(b)
cs=armax(b,[1,10]) %���ģ��
figure, myres=resid(cs,b); %����в������������в������غ���ͼ
[h,p,st]=lbqtest(myres,'lags',[6,12,18]) %����LBQ����
bhat=forecast(cs,b,2); %����b��2��Ԥ��ֵ
ahat=a(end-9:end-8)+bhat %��ԭʼ���е�2��Ԥ��ֵ

