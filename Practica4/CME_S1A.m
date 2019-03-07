%Tarea 3
% clear all;
% syms s t;
% ut=cos(sqrt(5)*t)
% us=laplace(ut,'t','s')
% gs=(2*s - 3)/(s^2 + 5);
% 
% Ys=gs*us
% Yt=ilaplace(Ys,'s','t')
% t=0:0.1:10;
% Ytt=subs(Yt,'t',t);
% plot(t,Ytt);
% 
% grid on;
% axis([0 10 -15 15]);

% %Tarea 4
% clear all;
% syms s;
% us=1/s
% gs=(2*s - 3)/(s^2 + 5)
% 
% Ys=gs*us
% Yt=ilaplace(Ys,'s','t')
% t=0:0.01:10;
% Ytt=subs(Yt,'t',t);
% plot(t,Ytt);
% 
% grid on;
% axis([0 10 -5 5]);

