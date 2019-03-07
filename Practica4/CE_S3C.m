% %Tarea 2
% clear all;
% syms s t;
% ut=dirac(t)
% us=laplace(ut,'t','s')
% gs=(s-1)/(s^3 + 14*s^2+69*s+290);
% 
% Ys=gs*us
% Yt=ilaplace(Ys,'s','t')
% t=0:0.01:10;
% Ytt=subs(Yt,'t',t);
% plot(t,Ytt);
% 
% grid on;
% axis([0 4 -0.5 0.5]);