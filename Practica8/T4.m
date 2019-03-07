% %funcion1
% clear all
% syms n w
% F=-j*pi*(kroneckerDelta(w +(8*pi/20))- kroneckerDelta(w +(8*pi/20)));
% mod =abs(F)
% arg = angle(F)
% w=-pi:1:pi;
% subplot(2,1,1)
% modulo=subs (mod,'w',w);
% stem(w,modulo)
% title ('MÓDULO')
% subplot(2,1,2)
% argumento = subs (arg,'w',w);
% stem(w,argumento)
% title ('ARGUMENTO')

% %funcion2
% clear all
% syms n w
% N=2
% w=2*pi/N
% F=1/(1 + exp (-i*w));
% mod =abs(F)
% arg = angle(F)
% w=-pi:1:pi;
% subplot(2,1,1)
% modulo=subs (mod,'w',w);
% stem(w,modulo)
% title ('MÓDULO')
% subplot(2,1,2)
% argumento = subs (arg,'w',w);
% stem(w,argumento)
% title ('ARGUMENTO')

% %funcion3
% clear all
% syms n w
% F=2*pi*kroneckerDelta(w + (2*pi/5));
% mod =abs(F)
% arg = angle(F)
% w=-pi:1:pi;
% subplot(2,1,1)
% modulo=subs (mod,'w',w);
% stem(w,modulo)
% title ('MÓDULO')
% subplot(2,1,2)
% argumento = subs (arg,'w',w);
% stem(w,argumento)
% title ('ARGUMENTO')

% % funcion4
% clear all
% syms n w
% F=(2/pi)*(kroneckerDelta(w + (4*pi/10))+kroneckerDelta(w - (4*pi/10)))+(5/pi)*(kroneckerDelta(w + (4*pi/15))+kroneckerDelta(w - (4*pi/15))) + (1/pi)*(kroneckerDelta(w + (2*pi/3))+kroneckerDelta(w - (2*pi/3))) ;
% mod =abs(F)
% arg = angle(F)
% w=-pi:1:pi;
% subplot(2,1,1)
% modulo=subs (mod,'w',w);
% stem(w,modulo)
% title ('MÓDULO')
% subplot(2,1,2)
% argumento = subs (arg,'w',w);
% stem(w,argumento)
% title ('ARGUMENTO')

% %funcion6
% clear all
% syms n w
% F=(sin((w+2*pi/10)*(5+1/2))/sin(w+2*pi/10))+(sin((w-2*pi/10)*(5+1/2))/sin(w-2*pi/10))
% mod =abs(F)
% arg = angle(F)
% w=-3*pi:1:3*pi;
% subplot(2,1,1)
% modulo=subs (mod,'w',w);
% stem(w,modulo)
% title ('MÓDULO')
% subplot(2,1,2)
% argumento = subs (arg,'w',w);
% stem(w,argumento)
% title ('ARGUMENTO')