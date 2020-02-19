clear all;
%N1A Sin Paridad, Imaginaria
% N=5;
% n=0:1:N-1;
% w=2*pi/N;
% x=(5*j*exp(j*w*1*n)-2*exp(j*w*4*n));
% xN=-(5*j*exp(j*w*1*(-n))-2*exp(j*w*4*(-n)));
% subplot(2,1,1);
% stem(n,real(x),'b');
% hold on;
% stem(n,real(xN),'g');
% subplot(2,1,2);
% stem(n,imag(x),'r');
% hold on;
% stem(n,imag(xN),'g');
% syms n;
% x=(5*j*exp(j*w*1*n)-2*exp(j*w*4*n));
% simplify(x)
% 
% 
% %N1B Es Par, Real
% N=10;
% n=0:1:N-1;
% w=2*pi/N;
% x=(3*exp(j*w*2*n)+3*exp(j*w*8*n));
% xN=(3*exp(j*w*2*(-n))+3*exp(j*w*8*(-n)));
% subplot(2,1,1);
% stem(n,real(x),'b');
% hold on;
% stem(n,real(xN),'g');
% subplot(2,1,2);
% stem(n,imag(x),'r');
% hold on;
% stem(n,imag(xN),'g');
% syms n;
% x=(3*exp(j*w*2*n)+3*exp(j*w*8*n));
% simplify(x)
% 
% 
% %N1C Es Par, Real
% N=6;
% n=0:1:N-1;
% w=2*pi/N;
% x=(1*exp(j*w*0*n)+3*exp(j*w*2*n)+3*exp(j*w*4*n));
% xN=(1*exp(j*w*0*(-n))+3*exp(j*w*2*(-n))+3*exp(j*w*4*(-n)));
% subplot(2,1,1);
% stem(n,real(x),'b');
% hold on;
% stem(n,real(xN),'g');
% subplot(2,1,2);
% stem(n,imag(x),'r');
% hold on;
% stem(n,imag(xN),'g');
% syms n;
% x=(1*exp(j*w*0*n)+3*exp(j*w*2*n)+3*exp(j*w*4*n));
% simplify(x)
% 
% 
% %N2A Sin paridad, Real
% N=10;
% n=0:1:N-1;
% w=2*pi/N;
% x=(4*sin(w*2*n)+4*cos(w*3*n));
% xN=-(4*sin(w*2*-n)+4*cos(w*3*-n));
% subplot(2,1,1);
% stem(n,real(x),'b');
% hold on;
% stem(n,real(xN),'g');
% subplot(2,1,2);
% stem(n,imag(x),'r');
% hold on;
% stem(n,imag(xN),'g');
% syms n;
% x=(4*sin(w*2*n)+4*cos(w*3*n));
% simplify(x)
% 
% 
% %N2B Par, Real
% N=5;
% n=0:1:N-1;
% w=2*pi/N;
% x=(2*cos(w*0*n)+2*cos(w*1*n)+2*cos(w*2*n));
% xN=(2*cos(w*0*-n)+2*cos(w*1*-n)+2*cos(w*2*-n));
% subplot(2,1,1);
% stem(n,real(x),'b');
% hold on;
% stem(n,real(xN),'g');
% subplot(2,1,2);
% stem(n,imag(x),'r');
% hold on;
% stem(n,imag(xN),'g');
% syms n;
% x=(2*cos(w*0*n)+2*cos(w*1*n)+2*cos(w*2*n));
% simplify(x)
% 
% 
% %N2C Par Real
% N=7;
% n=0:1:N-1;
% w=2*pi/N;
% x=(1*cos(w*0*n)+1/5*cos(w*1*n)+1/25*cos(w*2*n)+1/125*cos(w*3*n));
% xN=(1*cos(w*0*-n)+1/5*cos(w*1*-n)+1/25*cos(w*2*-n)+1/125*cos(w*3*-n));
% subplot(2,1,1);
% stem(n,real(x),'b');
% hold on;
% stem(n,real(xN),'g');
% subplot(2,1,2);
% stem(n,imag(x),'r');
% hold on;
% stem(n,imag(xN),'g');
% syms n;
% x=(1*cos(w*0*n)+1/5*cos(w*1*n)+1/25*cos(w*2*n)+1/125*cos(w*3*n));
% simplify(x)


%%Ej3
% %Conjunto 1
% N=9;
% n=0:1:N-1;
% w=2*pi/N;
% x=(2*cos(w*3*n)+2*cos(w*6*n)+3*cos(w*4*n)+3*cos(w*5*n));
% subplot(2,1,1);
% stem(n,real(x),'b');
% subplot(2,1,2);
% stem(n,imag(x),'r');

% %Conjunto 2
% N=9;
% n=0:1:N-1;
% w=2*pi/N;
% x=(-2*sin(w*1*n)-3*sin(w*2*n));
% subplot(2,1,1);
% stem(n,real(x),'b');
% subplot(2,1,2);
% stem(n,imag(x),'r');
