clc, clear
x=[0.9501 0.2311 0.6068 0.4860 0.8913 0.7621 0.4565 0.0185 0.8214 0.4447];
y=[0.9528 0.7041 0.9539 0.5982 0.8407 0.4428 0.8368 0.5187 0.0222 0.3759];
subplot(131),voronoi(x,y); %ֱ�ӻ�Voronoiͼ
title('Voronoiͼ')
subplot(132), plot(x,y,'.'), hold on 
tri=delaunay(x,y) %����delaunay�����ʷ֣�ÿ����һ�������εĶ����������
triplot(tri,x,y,'k-'); %��delaunay������
title('delaunay������')
[vx,vy]=voronoi(x,y); %����Voronoiͼ����ĺ������������
subplot(133),plot(x,y,'kP',vx,vy,'k--'); %���ݶ������껭Voronoiͼ
xlim([0 1]), ylim([0 1]) %����x���y��ķ�Χ
hold on, triplot(tri,x,y,'k-'); %��delaunay������
title('�Ա�ͼ')

