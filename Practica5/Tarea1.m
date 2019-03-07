%Aunque pongo sin(10t) luego lo pongo bien, lo calculo con 0,2pi

%S1A
% clear all;
% syms s;
% gs=2/(s^2-0.64);
% [ns,ds]=numden(gs);
% n=sym2poly(ns);
% d=sym2poly(ds);
% gs=tf(n,d);
% [z,p,k]=zpkdata(gs);
% pzmap(gs);

%funcion step
% clear all;
% polos=roots([1,0,-0.64]);
% gs=tf([2],[1,0,-0.64]);
% step(gs);

%funcion sin(2*pi*t)
% clear all;
% t=0:0.1:50;
% gs=tf([2],[1,0,-0.64]);
% us=sin(0.2*pi*t);
% lsim(gs,us,t);

%S1B
% clear all;
% syms s;
% gs=(5*s^2+25*s+30)/(s^3+12*s^2+25*s+50);
% [ns,ds]=numden(gs);
% n=sym2poly(ns);
% d=sym2poly(ds);
% gs=tf(n,d);
% [z,p,k]=zpkdata(gs)
%pzmap(gs);

%funcion step
% clear all;
% polos=roots([1,12,25,50]);
% gs=tf([5,25,30],[1,12,25,50]);
% step(gs);
% 
%funcion sin(2*pi*t)
% clear all;
% t=0:0.1:20;
% gs=tf([5,25,30],[1,12,25,50]);
% us=sin(0.2*pi*t);
% lsim(gs,us,t);


%S1C
% clear all;
% syms s;
% gs=(80*s-80)/(s^4+10*s^3+s^2+10*s);
% [ns,ds]=numden(gs);
% n=sym2poly(ns);
% d=sym2poly(ds);
% gs=tf(n,d);
% [z,p,k]=zpkdata(gs);
% pzmap(gs);

% %funcion step
% clear all;
% polos=roots([1,10,1,10,0]);
% gs=tf([80,-80],[1,10,1,10,0]);
% step(gs);
% 
% %funcion sin(2*pi*t)
% clear all;
% t=0:0.1:50;
% gs=tf([80,-80],[1,10,1,10,0]);
% us=sin(0.2*pi*t);
% lsim(gs,us,t);



%S2A
% clear all;
% syms z;
% gz=(z^2-2*z-2)/(z^3-1.707*z^2+0.9571*z-0.25);
% [nz,dz]=numden(gz);
% n=sym2poly(nz);
% d=sym2poly(dz);
% gz=tf(n,d);
% [z,p,k]=zpkdata(gz);
% gz=zpk(z,p,1,-1);
% pzmap(gz);

% %funcion step
% clear all
% gz=tf([1,-2,-2],[1,-1.707,0.9571,-0.25],-1);
% step(gz,50000);
% 
% %funcion sin(2*pi*t)
% clear all
% gz=tf([1,-2,-2],[1,-1.707,0.9571,-0.25],-1);
% n=0:50;
% uz=sin(0.2*pi*n);
% lsim(gz,uz,n);


%S2B
% clear all;
% syms z;
% gz=(1)/(z^2+2.5*z+1);
% [nz,dz]=numden(gz);
% n=sym2poly(nz);
% d=sym2poly(dz);
% gz=tf(n,d);
% [z,p,k]=zpkdata(gz);
% gz=zpk(z,p,1,-1);
% pzmap(gz);

% %funcion step
% clear all
% gz=tf([1],[1,2.5,1],-1);
% step(gz,20);
% 
% %funcion sin(2*pi*t)
% clear all
% gz=tf([1],[1,2.5,1],-1);
% n=0:20;
% uz=sin(0.2*pi*n);
% lsim(gz,uz,n);


%S2C
% clear all;
% syms z;
% gz=(z^2)/(z^3-0.5*z^2+0.01*z-0.005);
% [nz,dz]=numden(gz);
% n=sym2poly(nz);
% d=sym2poly(dz);
% gz=tf(n,d);
% [z,p,k]=zpkdata(gz);
% gz=zpk(z,p,1,-1);
% pzmap(gz);

% %funcion step
% clear all
% gz=tf([1,0,0],[1,-0.5,0.01,-0.005],-1);
% step(gz,20);
% 
% %funcion sin(2*pi*t)
% clear all
% gz=tf([1,0,0],[1,-0.5,0.01,-0.005],-1);
% n=0:50;
% uz=sin(0.2*pi*n);
% lsim(gz,uz,n);


grid;
%print(gcf,'t','-djpeg95');