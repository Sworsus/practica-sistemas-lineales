% %Tarea 2
% clear all;
% syms z n;
% un=sin(n)
% uz=ztrans(un,'n','z')
% gz=(z^2-4*z+3)/(z^3-0.1*z^2-0.04*z+0.004);
% 
% Yz=gz*uz
% Yn=iztrans(Yz,'z','n')
% n=0:1:25;
% Ynn=subs(Yn,'n',n);
% stem(n,Ynn);
% 
% grid on;

