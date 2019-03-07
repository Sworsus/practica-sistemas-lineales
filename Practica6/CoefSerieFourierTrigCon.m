function [ak,bk]=CoefSerieFourierExpCon(funcion,T,k)

% [ak,bk]=CoefSerieFourierExpCon(funcion,T,k)
%
% Dada la función simbólica funcion, definida sobre el periodo T 
% entre -T/2 y T/2 , calcula los coeficientes ak y bk del desarrollo en 
% serie de Fourier Continua de senos y cosenos para el k seleccionado

syms t;
w=2*pi/T;
prodc=cos(w*t*k)*funcion;
prods=sin(w*t*k)*funcion;
ak=2*int(prodc,t,-T/2,T/2)/T
bk=2*int(prods,t,-T/2,T/2)/T
 