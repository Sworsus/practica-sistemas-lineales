%Tarea 3
% clear all;
% syms s t;
% ut=cos(t)
% us=laplace(ut,'t','s')
% gt=2*exp(-4*t)+exp(6*t)*cos(t)+dirac(t);
% gs=laplace(gt,'t','s')
% 
% Ys=gs*us
% Yt=ilaplace(Ys,'s','t');
% t=0:0.01:10;
% Ytt=subs(Yt,'t',t);
% plot(t,Ytt);
% 
% grid on;
