clc, clear
a=[1500	1400	1320	1100	1000	950	880	800	700	680
1200	1120	1080	1060	980	930	870	790	680	670
11	12	13	14	15	16	17	18	19	20
620	600	570	520	500	450	440	420	400	390
600	590	560	500	480	420	400	370	350	330];
x=a([1,4],:); x=x'; x=x(:);
y=a([2,5],:); y=y'; y=y(:);
dx=diff(x);  %求一阶向前差分
dy=diff(y);
temp=x(1:end-1).*y(1:end-1);  %构造分块矩阵的子矩阵
a=[-temp -x(1:end-1) zeros(19,2);zeros(19,2),-temp -y(1:end-1)]; 
b=[dx;dy];
solution=a\b
