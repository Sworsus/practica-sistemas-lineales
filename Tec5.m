%Tarea 1
% clear all;
% load Respuesta1.mat;
% t=data(:,1);
% s=data(:,2);
% plot(t,s,'b');
% hold on;
% %obtencion de g(s), tomando condiciones iniciales 0
% gs=tf([2],[1 15]);
% gs1=15.*gs
% step(gs1,'r');

%Tarea 2
% clear all;
% load Respuesta2.mat;
% n=data(:,1);
% z=data(:,2);
% stem(n,z,'b');
% %ginput(2);
% hold on;
% %obtencion de g(s), tomando condiciones iniciales 0
% gs=zpk([],[-1.7325+j*6.2419,-1.7325-j*6.2419],83.92)
% [y,n]=step(gs,5);
% stem(n,y,'r');

% Tarea3
clear all
load Tec5Tarea31.txt
t=Tec5Tarea31(:,1);
square=Tec5Tarea31(:,2);
plot(t,square);
hold on;
salida=Tec5Tarea31(:,4);
plot(t,salida);
hold on;
%obtencion de g(s), tomando condiciones iniciales 0
syms s t;
gt=sin(0.6981*t+pi)*cos(0.08*t);
gs=laplace(gt,'t','s');
ys=gs;
ytt=ilaplace(ys,'s','t');
t=0:0.1:30;
ytt=subs(ytt,'t',t);
plot(t,ytt,'g');

% Tarea4
% clear all
% load Tec5Tarea4.txt
% t=Tec5Tarea4(:,1);
% square=Tec5Tarea4(:,2);
% plot(t,square);
% hold on;
% salida=Tec5Tarea4(:,4);
% plot(t,salida);
