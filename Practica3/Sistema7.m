%Tarea 1
% clear all
% syms z k;
% fk=sym('y(k+2)-1.1314*y(k+1)+0.64*y(k)-u(k)');
% 
% fz=ztrans(fk,'k','z');
% fz=subs(fz,'y(0)',0);
% fz=subs(fz,'y(1)',0);
% fz=subs(fz,'u(0)',0);
% 
% fz=subs(fz,'ztrans(u(k),k,z)',1);
% fz=subs(fz,'ztrans(y(k),k,z)','Y');
% gz=simplify(solve(fz,'Y'))


%Tarea 2
% clear all
% syms z k;
% fk=sym('y(k+2)-1.1314*y(k+1)+0.64*y(k)-u(k)');
% 
% fz=ztrans(fk,'k','z');
% fz=subs(fz,'y(0)',0);
% fz=subs(fz,'y(1)',0);
% fz=subs(fz,'u(0)',0);
% 
% fz=subs(fz,'ztrans(u(k),k,z)',1);
% fz=subs(fz,'ztrans(y(k),k,z)','Y');
% Yz=simplify(solve(fz,'Y'));
% 
% Yk=iztrans(Yz,'z','k')


%Tarea 3
% clear all;
%%Control
% gz=tf([1], [1 -1.1314 0.64],-1);
% [y,k]=impulse(gz,25);
% stem(k,y);
%
%%Simbolico
% syms z k;
% fk=sym('y(k+2)-1.1314*y(k+1)+0.64*y(k)-u(k)');
% 
% fz=ztrans(fk,'k','z');
% fz=subs(fz,'y(0)',0);
% fz=subs(fz,'y(1)',0);
% 
% fz=subs(fz,'ztrans(u(k),k,z)',1);
% fz=subs(fz,'ztrans(y(k),k,z)','Y');
% Yz=simplify(solve(fz,'Y'));
% 
% Yk=iztrans(Yz,'z','k');
% k=0:1:20;
% Ykk=subs(Yk,'k',k);
% stem(k,Ykk);


%Tarea 4
% clear all;
%%Control
% gz=tf([1], [1 -1.1314 0.64],-1);
% [y,k]=step(gz,25);
% stem(k,y);
%
%%Simbolico
% syms z k;
% fk=sym('y(k+2)-1.1314*y(k+1)+0.64*y(k)-u(k)');
% uz=z/(z-1);
% 
% fz=ztrans(fk,'k','z');
% fz=subs(fz,'y(0)',0);
% fz=subs(fz,'y(1)',0);
% 
% fz=subs(fz,'ztrans(u(k),k,z)',uz);
% fz=subs(fz,'ztrans(y(k),k,z)','Y');
% Yz=simplify(solve(fz,'Y'));
% 
% Yk=iztrans(Yz,'z','k');
% k=0:1:25;
% Ykk=subs(Yk,'k',k);
% stem(k,Ykk);


%Tarea 5
% clear all;
%%Control
% gz=tf([1], [1 -1.1314 0.64],-1);
% k=0:1:25;
% y=k.*heaviside(k);
% [y,k]=lsim(gz,y,k);
% stem(k,y);
%
%%Simbolico
% syms z k;
% fk=sym('y(k+2)-1.1314*y(k+1)+0.64*y(k)-u(k)');
% uk=k.*heaviside(k);
% uz=ztrans(uk,'k','z');
% 
% fz=ztrans(fk,'k','z');
% fz=subs(fz,'y(0)',0);
% fz=subs(fz,'y(1)',0);
% 
% fz=subs(fz,'ztrans(u(k),k,z)',uz);
% fz=subs(fz,'ztrans(y(k),k,z)','Y');
% Yz=simplify(solve(fz,'Y'));
% 
% Yk=iztrans(Yz,'z','k');
% k=0:1:25;
% Ykk=subs(Yk,'k',k);
% stem(k,Ykk);


%Tarea 6
% clear all;
%%Control
% gz=tf([1], [1 -1.1314 0.64],-1);
% k=0:1:100;
% y=sin(0.05.*k);
% stem(k,y);
%
%%Simbolico
% syms z k;
% fk=sym('y(k+2)-1.1314*y(k+1)+0.64*y(k)-u(k)');
% uk=sin(0.05.*k);
% uz=ztrans(uk,'k','z');
% 
% fz=ztrans(fk,'k','z');
% fz=subs(fz,'y(0)',0);
% fz=subs(fz,'y(1)',0);
% 
% fz=subs(fz,'ztrans(u(k),k,z)',uz);
% fz=subs(fz,'ztrans(y(k),k,z)','Y');
% Yz=simplify(solve(fz,'Y'));
% 
% Yk=iztrans(Yz,'z','k');
% k=0:1:100;
% Ykk=subs(Yk,'k',k);
% stem(k,Ykk);


% Tarea 7
% clear all;
% %Control
% gz=tf([1 -0.1314 1], [1 -1.1314 0.64],-1);
% ci=tf([1], [1 -1.1314 0.64],-1);
% k=0:1:25;
% [y1,t1]=step(gz,k);
% [y2,t2]=impulse(gz,k);
% [y3,t3]=impulse(ci,k);
% stem(k,y1+y2+y3);
% 
%%Simbolico
% syms z k;
% fk=sym('y(k+2)-1.1314*y(k+1)+0.64*y(k)-u(k)');
% 
% fz=ztrans(fk,'k','z');
% fz=subs(fz,'y(0)',1);
% fz=subs(fz,'y(1)',1);
% 
% fz=subs(fz,'ztrans(u(k),k,z)',1);
% fz=subs(fz,'ztrans(y(k),k,z)','Y');
% ci=simplify(solve(fz,'Y'));
% 
% uz=1+z/(z-1);
% gz=1/(z^2-1.1314*z+0.64);
% Yz=(gz.*uz)+ci;
% Yk=iztrans(Yz,'z','k');
% 
% k=0:1:25;
% Ykk=subs(Yk,'k',k);
% stem(k,Ykk);

% grid on;
% print(gcf,'-djpeg95','s7tp');
