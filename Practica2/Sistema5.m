%Tarea 1
% clear all
% syms t
% V=sym('V(t)');
% dV=diff(V,t);
% U=dirac(t);
% 
% f=dV-5*V-2*U;
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
% U=dirac(t);
% 
% f=dV-5*V-2*U;
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
% gs=tf([2],[1 -5]);
% t=-10:0.01:10;
% impulse(gs);
% axis([0 2.5 0 10]);
%
%%Simbolico
% clear all
% syms t
% V=sym('V(t)');
% dV=diff(V,t);
% U=dirac(t);
% 
% f=dV-5*V-2*U;
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
% axis([0 2.5 0 10]);


%Tarea 4
% clear all
% gs=tf([2],[1 -5]);
% t=-10:0.01:10;
% step(gs);
% axis([0 2 -1 20]);


%Tarea 5
% clear all
% gs=tf([2],[1 -5]);
% t=0:0.01:20;
% U=t.*heaviside(t);
% lsim(gs,U,t);
% axis([0 5 0 5]);


%Tarea 6
% clear all
% gs=tf([2],[1 -5]);
% t=0:0.01:20;
% U=sin(5*t);
% lsim(gs,U,t);
% axis([0 5 -5 5]);


% xlabel('n');ylabel('y(n)');
% grid on;
% print(gcf,'-djpeg95','s5tpc');
