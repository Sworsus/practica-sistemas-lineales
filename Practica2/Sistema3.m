%Tarea 1
% clear all
% syms t
% V=sym('V(t)');
% dV=diff(V,t);
% d2V=diff(dV,t);
% U=dirac(t);
% dU=diff(U,t);
% 
% f=d2V+25*V-6*dU;
% 
% fL=laplace(f);
% fL=subs(fL,'V(0)',0);
% fL=subs(fL,'D(V)(0)',0);
% fL=subs(fL,'laplace(V(t),t,s)','Vs');
% 
% gs=solve(fL,'Vs')


%Tarea 2
% clear all
% syms t
% V=sym('V(t)');
% dV=diff(V,t);
% d2V=diff(dV,t);
% U=dirac(t);
% dU=diff(U,t);
% 
% f=d2V+25*V-6*dU;
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
% clear all
% gs=tf([6 0],[1 0 25]);
% t=-10:0.01:10;
% impulse(gs);
% axis([0 5 -8 8]);
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
% f=d2V+25*V-6*dU;
% 
% fL=laplace(f);
% fL=subs(fL,'V(0)',0);
% fL=subs(fL,'D(V)(0)',0);
% fL=subs(fL,'laplace(V(t),t,s)','Vs');
% Ys=solve(fL,'Vs')
% Yt=ilaplace(Ys,'s','t');
% 
% t=-10:0.01:10;
% Ytt=subs(Yt,'t',t);
% plot(t,Ytt);
% axis([0 5 -8 8]);


%Tarea 4
% clear all
% gs=tf([6 0],[1 0 25]);
% t=-10:0.01:10;
% step(gs);
% axis([0 5 -8 8]);


%Tarea 5
% clear all
% gs=tf([6 0],[1 0 25]);
% t=0:0.01:10;
% U=t.*heaviside(t);
% lsim(gs,U,t);
% axis([0 5 -5 5]);


%Tarea 6
% clear all
% gs=tf([6 0],[1 0 25]);
% t=0:0.01:10;
% U=sin(5*t);
% lsim(gs,U,t);
% axis([0 5 -15 15]);


% xlabel('n');ylabel('y(n)');
% grid on;
% print(gcf,'-djpeg95','s3tpc');