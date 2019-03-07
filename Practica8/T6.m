% %Ec. Ponderatriz Inestable, no se hace nada
% syms z n;
% hn=(-1.2)^n+5^n*cos(2*pi/7*n);
% hz=ztrans(hn);
% [nz,dz]=numden(hz);
% n=sym2poly(nz);
% d=sym2poly(dz);
% gz=tf(n,d);
% [z,p,k]=zpkdata(gz);
% gz=zpk(z,p,1,-1);
% pzmap(gz);
% grid;
% 
% %Ec. Diff. Estable
% clear all;
% syms z n;
% hz = (1-5*z^2)/(z+0.1);
% [nz,dz]=numden(hz);
% n= sym2poly(nz);
% d= sym2poly(dz);
% gz = tf(n,d);
% [z,p,k]=zpkdata(hz);
% hz=zpk(z,p,1,-1);
% pzmap(hz);
% grid;
% %solucion
% g2j=subs(hz,'z',2/20*pi*j);
% a=abs(g2j);
% b=angle(g2j);
% g7j=subs(hz,'z',2/7*pi*j);
% c=abs(g7j);
% d=angle(g7j);
% yt=a*cos(2/20*pi*n+b)+c*sin(2/7*pi*n+d);
% simplify(yt)
% 
% 
% %Func. Transf. %este sistema es estable
% syms n z;
% hz=(z^3+z^2+z+1)/z^3;
% %comprobamos estabilidad
% [nz,dz]=numden(hz);
% n=sym2poly(nz);
% d=sym2poly(dz);
% gz=tf(n,d);
% [z,p,k]=zpkdata(gz);
% gz=zpk(z,p,1,-1);
% pzmap(gz);
% grid;
% %solucion
% g2j=subs(hz,'z',2/20*pi*j);
% a=abs(g2j);
% b=angle(g2j);
% g7j=subs(hz,'z',2/7*pi*j);
% c=abs(g7j);
% d=angle(g7j);
% yt=a*cos(2/20*pi*n+b)+c*sin(2/7*pi*n+d);
% simplify(yt)



