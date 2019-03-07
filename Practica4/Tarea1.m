%Tarea 1

%Sistema 1A
% clear all;
% syms s;
% gs=(2*s - 3)/(s^2 + 5)
% 
% [ns,ds]=numden(gs);
% n=sym2poly(ns);
% d=sym2poly(ds);
% gs=tf(n,d);
% [z,p,k]=zpkdata(gs)
% pzmap(gs);


%Sistema 1B
% clear all;
% syms z;
% gz=1/(z - 1);
% 
% [ns,ds]=numden(gz);
% n=sym2poly(ns);
% d=sym2poly(ds);
% gz=tf(n,d);
% [z,p,k]=zpkdata(gz)
% gz=zpk(z,p,1,-1);
% pzmap(gz);


% %Sistema 2A
% clear all
% syms t;
% f=2*exp(-4*t)+exp(6*t)*cos(t)+dirac(t);
% fL=laplace(f);
% 
% [ns,ds]=numden(fL)
% n=sym2poly(ns);
% d=sym2poly(ds);
% fL=tf(n,d);
% [z,p,k]=zpkdata(fL)
% pzmap(fL);
% 
% 
% %Sistema 2B
% clear all
% syms n;
% f=(-0.1)^n + ((0.1)^n)*sin(0.1*n);
% fz=ztrans(f);
% 
% [ns,ds]=numden(fz)
% n=sym2poly(ns);
% d=sym2poly(ds);
% fz=tf(n,d);
% [z,p,k]=zpkdata(fz)
% fz=zpk(z,p,1,-1);
% pzmap(fz);
% 
% 
% %Sistema 3A
% clear all;
% syms s;
% gs=(s^2+4*s+3)/(s^3+2*s^2+25*s+50);
% 
% [ns,ds]=numden(gs);
% n=sym2poly(ns);
% d=sym2poly(ds);
% gs=tf(n,d);
% [z,p,k]=zpkdata(gs)
% pzmap(gs);
% 
% 
% %Sistema 3B
% clear all;
% syms s;
% gs=(s^2+4*s+3)/(s^3 + 4*s^2)
% 
% [ns,ds]=numden(gs);
% n=sym2poly(ns);
% d=sym2poly(ds);
% gs=tf(n,d);
% [z,p,k]=zpkdata(gs)
% pzmap(gs);
% 
% 
% %Sistema 3C
% clear all;
% syms s;
% gs=(s-1)/(s^3 + 14*s^2+69*s+290)
% 
% [ns,ds]=numden(gs);
% n=sym2poly(ns);
% d=sym2poly(ds);
% gs=tf(n,d);
% [z,p,k]=zpkdata(gs)
% pzmap(gs);
% 
% 
% %Sistema 3D
% clear all;
% syms z;
% gz=z^2/(z^3-0.2*z^2-z+0.2);
% 
% [ns,ds]=numden(gz);
% n=sym2poly(ns);
% d=sym2poly(ds);
% gz=tf(n,d);
% [z,p,k]=zpkdata(gz)
% gz=zpk(z,p,1,-1);
% pzmap(gz);
% 
% 
% %Sistema 3E
% clear all;
% syms z;
% gz=(z^2+2*z-3)/(z^2-3.51*z+4);
% 
% [ns,ds]=numden(gz);
% n=sym2poly(ns);
% d=sym2poly(ds);
% gz=tf(n,d);
% [z,p,k]=zpkdata(gz)
% gz=zpk(z,p,1,-1);
% pzmap(gz);


% %Sistema 3F
clear all;
syms z;
gz=1/(z^2 - 2*cos(1/5)*z + 1);

[ns,ds]=numden(gz);
n=sym2poly(ns);
d=sym2poly(ds);
gz=tf(n,d);
[z,p,k]=zpkdata(gz)
gz=zpk(z,p,1,-1);
pzmap(gz);


grid on;
% axis([-3 3 -3 3])
% print(gcf,'-djpeg95','t1st');
