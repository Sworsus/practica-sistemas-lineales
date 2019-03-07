clear all;
t=-20:0.1:20;
 x=sin(2*t)+cos(pi*t);
% x=1./(t-5);
% x=(-1).^t;
% x=(-t).*(-T/2<t)+(-t).*(t<T/2)+(t-T);
plot(t,x)
