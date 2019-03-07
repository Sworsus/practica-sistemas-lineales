%Tarea 1
% clear all
% syms z k;
% fk=sym('y(k+2)+0.64*y(k)-u(k+1)');
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
% fk=sym('y(k+2)+0.64*y(k)-u(k+1)');
% 
% fz=ztrans(fk,'k','z');
% fz=subs(fz,'y(0)',0);
% fz=subs(fz,'u(0)',0);
% 
% fz=subs(fz,'ztrans(u(k),k,z)',1);
% fz=subs(fz,'ztrans(y(k),k,z)','Y');
% gz=simplify(solve(fz,'Y'));
% 
% Yz=gz


%Tarea 3
% clear all
% gz=tf([1],[1 0 0.64],-1);
% [y,n]=impulse(gz,20);
% stem(n,y);


% Tarea 4
% clear all
% gz=tf([1],[1 0 0.64],-1);
% [y,n]=step(gz,20);
% stem(n,y);


%Tarea 5
% clear all;
% gz=tf([1], [1 0 0.64],-1);
% k=0:1:25;
% y=k.*heaviside(k);
% [y,k]=lsim(gz,y,k);
% stem(k,y);


%Tarea 6
% clear all;
% gz=tf([1],[1 0 0.64],-1);
% k=0:1:100;
% y=sin(0.05.*k);
% stem(k,y);


% xlabel('n');ylabel('y(n)');
% grid on;
% print(gcf,'-djpeg95','s3t6');
