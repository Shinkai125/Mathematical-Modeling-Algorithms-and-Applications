clc, clear
x0=[1050  1100  1120  1250  1280]; x0=x0(:);
n=length(x0); alpha=0.1; T= tinv(1-alpha/2,n-1) %������ֵ
mu=mean(x0), sig=std(x0)
t=[mu-sig/sqrt(n)*T, mu+sig/sqrt(n)*T]
%��������ttest�ķ���ֵci��ֱ�Ӹ����������������
[h,p,ci]=ttest(x0,mu,alpha)
