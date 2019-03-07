%Tarea 3
% clear all;
% syms z n;
% % un=n
% % uz=ztrans(un,'n','z')
% uz=1/(z^2+2)
% un=iztrans(uz,'z','n');
% gz=1/(z - 1);
% 
% Yz=gz*uz
% Yn=iztrans(Yz,'z','n')
% n=0:1:25;
% Ynn=subs(Yn,'n',n);
% stem(n,Ynn);
% 
% grid on;

%Tarea 4
clear all;
syms z n;
un=cos(n)
uz=ztrans(un, 'n', 'z')
gz=1/(z - 1);

Yz=gz*uz
Yn=iztrans(Yz,'z','n')
n=0:1:25;
Ynn=subs(Yn,'n',n);
stem(n,Ynn);

grid on;
axis([0 25 -2 2]);

print(gcf,'-djpeg95','t');