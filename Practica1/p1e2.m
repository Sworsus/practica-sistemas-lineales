%funcion1
%  t=-2:0.01:2;
%  t0=0.2
%  x=10*t;
%  y=cos(x);
%  plot(t,y,'b');
%  hold on;
%  plot(t-t0,y,'r');
%  axis([-1 1 -1.1 1.5])
%  xlabel('Tiempo(s)');

%funcion2
%  n=-10:1:10;
%  n0=2;
%  x=10*n;
%  y=sin(x);
%  stem(n,y,);
%  hold on;
%  stem(n-n0,y);
%  axis([-9 9 -1.1 1.5])
%  xlabel('n');

%funcion3
%  t=-10:0.01:10;
%  t0=2;
%  x=(pi/10)*t;
%  y=sin(x);
%  plot(t,y);
%  hold on;
%  plot(t-t0,y);
%  axis([-8 8 -1.1 1.5])
%  xlabel('Tiempo(s)');

%funcion4
%  n=-5:1:15;
%  n0=5;
%  x=(pi/10)*n;
%  y=cos(x);
%  stem(n,y);
%  hold on;
%  stem(n-n0,y);
%  axis([-5 10 -1.1 1.5])
%  xlabel('n');

%funcion5
%  t=-2:0.001:2;
%  t0=0.2;
%  w=4*t; z=exp(w);
%  x=(5*pi/4)*t; y=sin(x);
%  a=z.*y;
%  plot(t,a);
%  hold on;
%  plot(t-t0,a);
%  axis([-1.5 1 -50 50])
%  xlabel('Tiempo(s)');

%funcion6
%  n=-5:1:5;
%  n0=4;
%  z=4.^n;
%  x=(pi/5)*n; y=sin(x);
%  a=z.*y;
%  stem(n,a);
%  hold on;
%  stem(n-n0,a);
%  axis([-5 5 -20 200])
%  xlabel('n');

%ylabel('Altura(m)');
%legend('Curva 1','Curva 2(n0=0.2)');
%grid on;
%title('Grafica 6');
%print(gcf,'-djpeg95','f6Retardo');

%funcion1
%  t=-2:0.01:2;
%  x=10*t;
%  y=cos(x);
%  plot(t,y);
%  hold on;
%  plot(-t,y);
%  axis([-2 2 -1.1 1.5])
%  xlabel('Tiempo(s)');

%funcion2
%  n=-10:1:10;
%  x=10*n;
%  y=sin(x);
%  stem(n,y);
%  hold on;
%  stem(-n,y);
%  axis([-9 9 -1.1 1.5])
%  xlabel('n');

%funcion3
%  t=-10:0.01:10;
%  x=(pi/10)*t;
%  y=sin(x);
%  plot(t,y);
%  hold on;
%  plot(-t,y);
%  axis([-8 8 -1.1 1.5])
%  xlabel('Tiempo(s)');

%funcion4
%  n=-10:1:15;
%  x=(pi/10)*n;
%  y=cos(x);
%  stem(n,y);
%  hold on;
%  stem(n,y);
%  axis([-10 10 -1.1 1.5])
%  xlabel('n');

%funcion5
%  t=-2:0.001:2;
%  w=4*t; z=exp(w);
%  x=(5*pi/4)*t; y=sin(x);
%  a=z.*y;
%  plot(t,a);
%  hold on;
%  plot(-t,a);
%  axis([-1 1 -50 50])
%  xlabel('Tiempo(s)');

%funcion6
%  n=-10:1:10;
%  z=4.^n;
%  x=(pi/5)*n; y=sin(x);
%  a=z.*y;
%  stem(n,a);
%  hold on;
%  stem(-n,a);
%  axis([-10 10 -1000 1000])
%  xlabel('n');

%ylabel('Altura(m)');
%legend('Curva 1','Curva 2(-n)');
%grid on;
%title('Grafica 6');
%print(gcf,'-djpeg95','f6Inversion');


%funcion1
%  t=-2:0.01:2;
%  c=2;
%  x=10*t;
%  y=cos(x);
%  plot(t,y);
%  hold on;
%  plot(c*t,y);
%  xlabel('Tiempo(s)');
%  axis([-2 2 -1.1 1.5])

%funcion2
%  n=-10:1:10;
%  c=3;
%  x=10*n;
%  y=sin(x);
%  stem(n,y);
%  hold on;
%  stem(c.*n,y);
%  axis([-9 9 -1.1 1.5])
%  xlabel('n');

%funcion3
%  t=-10:0.01:10;
% c=1.7;
%  x=(pi/10)*t;
%  y=sin(x);
%  plot(t,y);
%  hold on;
%  plot(c.*t,y);
%  axis([-10 10 -1.1 1.5])
%  xlabel('Tiempo(s)');

%funcion4
%  n=-20:1:20;
%  c=2;
%  x=(pi/10)*n;
%  y=cos(x);
%  stem(n,y);
%  hold on;
%  stem(c.*n,y);
%  axis([-15 15 -1.1 1.5])
%  xlabel('n');

%funcion5
%  t=-2:0.001:2;
%  c=2;
%  w=4*t; z=exp(w);
%  x=(5*pi/4)*t; y=sin(x);
%  a=z.*y;
%  plot(t,a);
%  hold on;
%  plot(c.*t,a);
%  axis([-1 3 -50 50])
%  xlabel('Tiempo(s)');

%funcion6
%  n=-10:1:10;
%  c=2;
%  z=4.^n;
%  x=(pi/5)*n; y=sin(x);
%  a=z.*y;
%  stem(n,a);
%  hold on;
%  stem(c.*n,a);
%  axis([-10 15 -100 100])
%  xlabel('n');

%ylabel('Altura(m)');
%legend('Curva 1','Curva 2(2*n)');
%grid on;
%title('Grafica 6');
%print(gcf,'-djpeg95','f6Comp');

%funcion1
%  t=-2:0.01:2;
%  c=0.5;
%  x=10*t;
%  y=cos(x);
%  plot(t,y);
%  hold on;
%  plot(c.*t,y);
%  xlabel('Tiempo(s)');
%  axis([-1 1 -1.1 1.5])

%funcion2
%  n=-10:1:10;
%  c=0.7;
%  x=10*n;
%  y=sin(x);
%  stem(n,y);
%  hold on;
%  stem(c.*n,y);
%  axis([-8 9 -1.1 1.5])
%  xlabel('n');

%funcion3
%  t=-10:0.01:10;
%  c=0.5;
%  x=(pi/10)*t;
%  y=sin(x);
%  plot(t,y);
%  hold on;
%  plot(c.*t,y);
%  axis([-5 5 -1.1 1.5])
%  xlabel('Tiempo(s)');

%funcion4
%  n=-20:1:20;
%  c=0.5;
%  x=(pi/10)*n;
%  y=cos(x);
%  stem(n,y);
%  hold on;
%  stem(c.*n,y);
%  axis([-10 10 -1.1 1.5])
%  xlabel('n');

%funcion5
%  t=-2:0.001:2;
%  c=0.5;
%  w=4*t; z=exp(w);
%  x=(5*pi/4)*t; y=sin(x);
%  a=z.*y;
%  plot(t,a);
%  hold on;
%  plot(c.*t,a);
%  axis([-1 1 -50 50])
%  xlabel('Tiempo(s)');

%funcion6
%  n=-10:1:10;
%  c=0.5;
%  z=4.^n;
%  x=(pi/5)*n; y=sin(x);
%  a=z.*y;
%  stem(n,a);
%  hold on;
%  stem(c.*n,a);
%  axis([-5 5 -100 100])
%  xlabel('n');

%ylabel('Altura(m)');
%legend('Curva 1','Curva 2(0.5*n)');
%grid on;
%title('Grafica 6');
%print(gcf,'-djpeg95','f6Expan');
