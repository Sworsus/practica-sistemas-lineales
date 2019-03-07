% %T4A
% clear all
% syms t w
% x= sin(2*t)+cos(pi*t);
% F=fourier(x)
% mod =abs(F)
% arg = angle(F)
% w=-10:0.1:10;
% subplot(2,1,1)
% modulo=subs (mod,'w',w);
% plot(w,modulo)
% title ('MÓDULO')
% subplot(2,1,2)
% argumento = subs (arg,'w',w);
% plot(w,argumento)
% title ('ARGUMENTO')

% %T4E
% clear all
% syms t w
% x=1/(t-5);
% F=fourier(x)
% mod =abs(F)
% arg = angle(F)
% w=-10:0.1:10;
% subplot(2,1,1)
% modulo=subs (mod,'w',w);
% plot(w,modulo)
% title ('MÓDULO')
% subplot(2,1,2)
% argumento = subs (arg,'w',w);
% plot(w,argumento)
% title ('ARGUMENTO')
% 
% %T4F
% clear all
% syms t w
% x= t*exp(-j*t);
% F=fourier(x)
% mod =abs(F)
% arg = angle(F)
% w=-10:0.1:10;
% subplot(2,1,1)
% modulo=subs (mod,'w',w);
% plot(w,modulo)
% title ('MÓDULO')
% subplot(2,1,2)
% argumento = subs (arg,'w',w);
% plot(w,argumento)
% title ('ARGUMENTO')
% 
% %T4H
% clear all
% syms t w
% x= (heaviside(t+1)-heaviside(t-1))*cos(pi*t);
% F=fourier(x)
% mod =abs(F)
% arg = angle(F)
% w=-10:0.1:10;
% subplot(2,1,1)
% modulo=subs (mod,'w',w);
% plot(w,modulo)
% title ('MÓDULO')
% subplot(2,1,2)
% argumento = subs (arg,'w',w);
% plot(w,argumento)
% title ('ARGUMENTO')
% 
% %T4I
% clear all
% syms t w
% x= t/(t+5);
% F=fourier(x)
% mod =abs(F)
% arg = angle(F)
% w=-10:0.1:10;
% subplot(2,1,1)
% modulo=subs (mod,'w',w);
% plot(w,modulo)
% title ('MÓDULO')
% subplot(2,1,2)
% argumento = subs (arg,'w',w);
% plot(w,argumento)
% title ('ARGUMENTO')