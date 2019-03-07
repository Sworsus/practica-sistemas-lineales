clear all;

% %Ec. Ponderatriz
% syms s t;
% ht=exp(-5*t)*cos(3*t)+exp(-3*t);
% hs=laplace(ht);
% h2j=subs(hs,'s',2*j);
% a=abs(h2j);
% b=angle(h2j);
% h20j=subs(hs,'s',20*j);
% c=abs(h20j);
% d=angle(h20j);
% yt=a*sin(2*t+b)+c*cos(20*t+d);
% simplify(yt)

% %Ec. Diff.
% %Este sistema es inestable, por lo que no es posible obtener la respuesta
% %permanente por Fourier
% syms t;
% U=sin(2*t)+cos(20*t);
% Y=sym('Y(t)');
% dY=diff(Y,t);
% d2Y=diff(dY,t);
% dU=diff(U,t);
% 
% f=d2Y-6*dY+10*Y-dU+5*U;
% 
% fL=laplace(f);
% fL=subs(fL,'Y(0)',0);
% fL=subs(fL,'D(Y)(0)',0);
% fL=subs(fL,'laplace(Y(t),t,s)','Ys');
% gs=solve(fL,'Ys');
% [ns,ds]=numden(gs);
% n=sym2poly(ns);
% d=sym2poly(ds);
% gs=tf(n,d);
% [z,p,k]=zpkdata(gs);
% pzmap(gs);
% grid;


% %Func. Transf.
% %este sistema es estable
% syms s t;
% gs=(2*s)/(s^2+3*s+10);
% 
% %comprobamos estabilidad
% [ns,ds]=numden(gs);
% n=sym2poly(ns);
% d=sym2poly(ds);
% gs=tf(n,d);
% [z,p,k]=zpkdata(gs);
% pzmap(gs);
% grid;

%solucion
% g2j=subs(gs,'s',2*j);
% a=abs(g2j);
% b=angle(g2j);
% g20j=subs(gs,'s',20*j);
% c=abs(g20j);
% d=angle(g20j);
% yt=a*sin(2*t+b)+c*cos(20*t+d)


% %Resp. en F


