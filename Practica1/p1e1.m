clear all
%funcion1
%  t=-1:0.01:1;
%  x=10*t;
%  y=cos(x);
%  plot(t,y);
%  xlabel('Tiempo(s)');

%funcion2
%  n=-10:1:10;
%  x=10*n;
%  y=sin(x);
%  stem(n,y);
%  xlabel('n');

%funcion3
%  t=-10:0.01:10;
%  x=(pi/10)*t;
%  y=sin(x);
%  plot(t,y);
%  xlabel('Tiempo(s)');

%funcion4
%  n=-5:1:15;
%  x=(pi/10)*n;
%  y=cos(x);
%  stem(n,y);
%  xlabel('n');

%funcion5
%  t=-1:0.001:1;
%  w=4*t; z=exp(w);
%  x=(5*pi/4)*t; y=sin(x);
%  a=z.*y;
%  plot(t,a);
%  xlabel('Tiempo(s)');

%funcion6
%  n=-5:1:5;
%  z=4.^n;
%  x=(pi/5)*n; y=sin(x);
%  a=z.*y;
%  stem(n,a);
%  xlabel('n');

%funcion7
%  t=-10:0.1:10;
%  w=-0.2*t; z=exp(w);
%  x=(pi/5)*t; y=cos(x);
%  a=z.*y;
%  plot(t,a);
%  xlabel('Tiempo(s)');

%funcion8
%  n=-7:1:7;
%  z=0.2.^n;
%  x=(pi/5)*n; y=sin(x);
%  a=z.*y;
%  stem(n,a);
%  xlabel('n');

%funcion9
%  t=-5:0.01:5;
%  x=10.*sin(pi.*t-pi/4);
%  a=abs(x);
%  y=(a<=5).*(x) + (x<-5).*(-7.5) + (x>5).*(7.5);
%  plot(t,y);
%  xlabel('Tiempo(t)');

%funcion10
%  t=-10:0.01:6;
%  x=dirac(t)
%  plot(t,x);
%  xlabel('Tiempo(t)');

%funcion11
%  n=0:1:10;
%  x=kroneckerDelta(n-6,0);
%  stem(n,x);
%  xlabel('n');

%funcion12
%  syms x
%  ezplot(-4.*heaviside(x-6), [-2,8])
%  xlabel('Tiempo(t)');

%funcion13
%  syms x
%  ezplot(25*(x-8).*heaviside(x-8), [0,10])
%  axis([0 10 0 50])
%  xlabel('Tiempo(t)');

%funcion14
%  t=-5:0.1:10
%  d=5;
%  c=2.5;
%  y = rectpuls(t-c,d)
%  plot(t,y)
%  axis([-5 10 0 1.5])
%  xlabel('Tiempo(t)');

%funcion15
%  t=-5:0.1:15;
%  d=10;
%  c=5;
%  y = tripuls(t-c,d);
%  plot(t,y)
%  axis([-5 15 0 1.5]);
%  xlabel('Tiempo(t)');

%funcion16
%  t = 0:0.01:1;
%  f = 10;
%  x = square(2*pi*t*f);
%  plot(t,x)
%  axis([0 1 -1.1 1.1]);
%  xlabel('Tiempo(t)');

%funcion17
%  t = 0:0.01:15;
%  f = 1/5;
%  d = 2/5*100
%  x = square(2*pi*t*f,d);
%  plot(t,x)
%  axis([0 13 -1.1 1.1]);
%  xlabel('Tiempo(t)');


%funcion18
%  t = 0:0.01:50;
%  f = 0.1;
%  x = sawtooth(2*pi*t*f);
%  plot(t,x)
%  axis([0 50 -1.1 1.1]);
%  xlabel('Tiempo(t)');

%funcion19
%  t = 0:0.01:15;
%  f = 1/5;
%  w = 0.75
%  x = sawtooth(2*pi*t*f,w);
%  plot(t,x)
%  axis([0 13 -1.1 1.1]);
%  xlabel('Tiempo(t)');
%  a=ginput(2)

%ylabel('Amplitud(m)');
grid on;
title('Grafica p');
print(gcf,'-djpeg95','funcionp');
