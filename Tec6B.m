% %Tarea 1
% clear all;
% load ('ejemploBode.mat');
% subplot(2,1,1);
% semilogx(w,20*log10(mag));
% grid on;
% subplot(2,1,2);
% semilogx(w,phase*pi/180);
% grid on;
% 
% Gw=mag.*exp(phase*j);
% [num,den]=invfreqs(Gw,w,2,2);
% gs=minreal(tf(num,den))
% 
% %Tarea2
% sys=zpk([50],[-5],1)
% [Mw,phigrados,w]=bode(sys);
% Mw=squeeze(Mw);
% phiw=squeeze(phigrados)*pi/180;
% subplot(2,1,1);semilogx(w,20*log10(Mw));
% grid on;
% subplot(2,1,2);semilogx(w,phiw*180/pi);
% grid on;
% 
% 
% %Tarea3
% sys=zpk([-2,-2],[-0.01,-0.01,50,50,50,50],1562.5)
% [Mw,phigrados,w]=bode(sys);
% Mw=squeeze(Mw);
% phiw=unwrap(squeeze(phigrados)*pi/180);
% subplot(2,1,1);
% semilogx(w,20*log10(Mw));
% grid on;
% subplot(2,1,2);
% semilogx(w,phiw*180/pi);
% grid on;
