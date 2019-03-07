clear all;
syms t;
T=5;
w0=2*pi/T;
gs=tf([2],[1 5]);
y=t;
[a0,b0]=CoefSerieFourierTrigCon(y,T,0);
[A,Phi]=bode(gs,0);
Phi=Phi/180*pi;
y=a0/2*A*exp(j*Phi);
ut=t*(t>-5)+t*(t<=5)+(t-T);
for k=-10:10
    [ak,bk]=CoefSerieFourierTrigCon(y,T,k);
    [A,Phi]=bode(gs,k*w0);
    y=y+ak*A*cos(w0*k*t+Phi)+bk*A*sin(w0*k*t+Phi);
end