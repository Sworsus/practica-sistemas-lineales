function [ak,bk]=CoefSerieFourierTrigDis(xn,k)

% [ak,bk]=CoefSerieFourierTrigDis(xn,k)
%
% Dados en xn los n valores númericos evaluados sobre n=0:N-1 de la función 
% periódica de periodo N, calcula los coeficientes ak y bk de la Serie de 
% Fourier Discreta de Senos y Cosenos para el k seleccionado

N=length(xn);
n=0:N-1;
w=2*pi/N;
prodc=cos(w*k*n).*xn;
prods=sin(w*k*n).*xn;
ak=2*sum(prodc)/N
bk=2*sum(prods)/N


