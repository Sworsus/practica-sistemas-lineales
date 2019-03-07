%Tarea 1
% clear all
% syms t
% V=sym('V(t)');
% dV=diff(V,t);
% d2V=diff(dV,t);
% U=dirac(t);
% dU=diff(U,t);
% 
% f=d2V+4*dV+13*V-U+2*dU;
% 
% fL=laplace(f);
% fL=subs(fL,'V(0)',0);
% fL=subs(fL,'D(V)(0)',0);
% fL=subs(fL,'laplace(V(t),t,s)','Vs');
% 
% gs=solve(fL,'Vs')


% %Tarea 2
% clear all
% syms t
% V=sym('V(t)');
% dV=diff(V,t);
% d2V=diff(dV,t);
% U=dirac(t);
% dU=diff(U,t);
% 
% f=d2V-4*dV+13*V-U+2*dU;
% 
% fL=laplace(f);
% fL=subs(fL,'V(0)',0);
% fL=subs(fL,'D(V)(0)',0);
% fL=subs(fL,'laplace(V(t),t,s)','Vs');
% Ys=solve(fL,'Vs');
% 
% Yt=ilaplace(Ys,'s','t')


%Tarea 3
%
%%Control
% gs=tf([-2 1],[1 4 13]);
% t=-10:0.01:10;
% impulse(gs);
% axis([0 5 -2 1]);
%
%%Simbolico
% clear all
% syms t
% V=sym('V(t)');
% dV=diff(V,t);
% d2V=diff(dV,t);
% U=dirac(t);
% dU=diff(U,t);
% 
% f=d2V+4*dV+13*V-U+2*dU;
% 
% fL=laplace(f);
% fL=subs(fL,'V(0)',0);
% fL=subs(fL,'D(V)(0)',0);
% fL=subs(fL,'laplace(V(t),t,s)','Vs');
% Ys=solve(fL,'Vs');
% Yt=ilaplace(Ys,'s','t');
% 
% t=-10:0.01:10;
% Ytt=subs(Yt,'t',t);
% plot(t,Ytt);
% axis([0 5 -2 1]);


%Tarea 4
% 
%%Control
% clear all;
% gs=tf([-2 1],[1 4 13]);
% t=-10:0.01:10;
% step(gs);
% axis([0 5 -0.5 0.5]);
% 
%%Simbolico
% clear all
% syms s
% Us=1/s;
% Ys=((-2*s+1)/(s^2+4*s+13))*Us;
% Yt=ilaplace(Ys,'s','t');
% 
% t=-10:0.01:10;
% Ytt=subs(Yt,'t',t);
% plot(t,Ytt);
% axis([0 5 -0.5 0.5]);


%Tarea 5
%
%%Control
% clear all;
% gs=tf([-2 1],[1 4 13]);
% t=0:0.01:10;
% U=t.*heaviside(t);
% lsim(gs,U,t);
% axis([0 10 -0.5 1]);
% 
%%Simbolico
% clear all
% syms t s
% Ut=t.*heaviside(t);
% Us=laplace(Ut);
% Ys=((-2*s+1)/(s^2+4*s+13))*Us;
% Yt=ilaplace(Ys,'s','t');
% 
% t=-10:0.01:10;
% Ytt=subs(Yt,'t',t);
% plot(t,Ytt);
% axis([0 10 -1 1]);


%Tarea 6
%
%%Control
% clear all;
% gs=tf([-2 1],[1 4 13]);
% t=0:0.01:10;
% U=sin(5*t);
% lsim(gs,U,t);
% axis([0 5 -1 1]);
%
%%Simbolico
% clear all
% syms t s
% Ut=sin(5*t);
% Us=laplace(Ut);
% Ys=((-2*s+1)/(s^2+4*s+13))*Us;
% Yt=ilaplace(Ys,'s','t');
% 
% t=-10:0.01:10;
% Ytt=subs(Yt,'t',t);
% plot(t,Ytt);
% axis([0 10 -1 1]);


%Tarea 7
%
%%Control
% clear all;
% gs=tf([-2 1],[1 4 13]);
% ci=tf([-1 6],[1 4 13])
% t=0:0.01:10;
% [y1,t1]=step(gs,t);
% [y2,t2]=impulse(gs,t);
% [y3,t3]=impulse(ci,t);
% plot(t1,y1+y2+y3)
% axis([0 5 -3 3]);
%
%%Simbolico
% clear all
% syms s t
% V=sym('V(t)');
% dV=diff(V,t);
% d2V=diff(dV,t);
% U=dirac(t);
% dU=diff(U,t);
% 
% f=d2V+4*dV+13*V-U+2*dU;
% 
% fL=laplace(f);
% fL=subs(fL,'V(0)',1);
% fL=subs(fL,'D(V)(0)',1);
% fL=subs(fL,'laplace(V(t),t,s)','Vs');
% 
% ci=solve(fL,'Vs');
% gs=(-2*s+1)/(s^2+4*s+13);
% Us=(1+1/s);
% 
% Ys=(gs.*Us)+ci;
% Yt=ilaplace(Ys,'s','t');
% 
% t=-10:0.01:10;
% Ytt=subs(Yt,'t',t);
% plot(t,Ytt);
% axis([0 5 -3 3]);


% xlabel('n');ylabel('y(n)');
% grid on;
% print(gcf,'-djpeg95','s1tps');