clc,clear
a=[1 1 1 1;1 1 1 0;1 1 0 1;1 0 1 1;1 0 1 0
    0 1 0 1;0 1 0 0;0 0 1 0;0 0 0 1;0 0 0 0]; % ÿһ����һ������״̬
b=[1 0 0 0;1 1 0 0;1 0 1 0;1 0 0 1]; % ÿһ����һ��ת��״̬
w=zeros(10); % �ڽӾ����ʼ��
for i=1:9
    for j=i+1:10
        for k=1:4
            if findstr(xor(a(i,:),b(k,:)),a(j,:))
                w(i,j)=1;
            end
        end
    end
end
w=w'; % ��������Ǿ���
c=sparse(w); % ����ϡ�����
[x,y,z]=graphshortestpath(c,1,10,'Directed',0); % ��ͼ������ͼ��Directed����ֵΪ0
h=view(biograph(c,[],'ShowArrows','off','ShowWeights','off')); % ��������ͼ
Edges=getedgesbynodeid(h); % ��ȡ���h�еı߼�
set(Edges,'Linecolor',[0,0,0]); % Ϊ�˽�����ӡ������߻��ɺ�ɫ
set(Edges,'LineWidth',1.5); % ���Ϳ������Ϊ1.5