% %S2
% clear all;
% N=8;
% n=0:1:N-1;
% k=1;
% xn=cos(10/40*pi*n);
% CoefSerieFourierTrigDis(xn,k)
% 
% %S3
% clear all;
% N=60;
% n=0:1:N-1;
% k=45;
% xn=sin(5/10*pi*n)+cos(7/5*pi*n)+cos(2/3*pi*n);
% CoefSerieFourierTrigDis(xn,k);
% 
% %S5
% clear all;
% N=20;
% n=0:1:N-1;
% k=N-1;
% xn=3*sin(0.1*pi*n+pi/3)-7*cos(0.2*pi*n+pi/4);
% CoefSerieFourierTrigDis(xn,k);
% 
% %S7
% clear all;
% N=2;
% n=0:1:N-1;
% k=1;
% xn=(-1).^n;
% CoefSerieFourierTrigDis(xn,k);
% 
% %S8
% clear all;
% N=16;
% n=0:1:N-1;
% k=15;
% xn=exp(j*pi/8*n);
% CoefSerieFourierTrigDis(xn,k);
