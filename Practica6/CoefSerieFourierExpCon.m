function ck=CoefSerieFourierExpCon(funcion,T,k)

% ck=CoefSerieFourierExpCon(funcion,T,k)
%
% Dada la función simbólica funcion, definida sobre el periodo T 
% entre -T/2 y T/2, calcula el coeficiente ck de la Serie de Fourier 
% Exponencial Continua para el k seleccionado


syms t;
w=2*pi/T;
prod=exp(-j*w*k*t)*funcion;
ck=int(prod,t,-T/2,T/2)/T;
 