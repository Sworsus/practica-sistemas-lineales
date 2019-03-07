%Tarea 3
clear all;
syms z n;
un=sin(n)
uz=ztrans(un,'n','z')
gz=(z^2+2*z-3)/(z^2-3.51*z+4);

Yz=gz*uz
Yn=iztrans(Yz,'z','n')
n=0:1:25;
Ynn=subs(Yn,'n',n);
stem(n,Ynn);
grid on;

print(gcf,'-djpeg95','t');
