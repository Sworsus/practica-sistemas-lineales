function ck=CoefSerieFourierExpDis(xn,k)

% ck=CoefSerieFourierExpDis(xn,k)
%
% Dados en xn los n valores númericos evaluados sobre n=0:N-1 de la función 
% periódica de periodo N, calcula el coeficient ck de la Serie de
% Fourier Discreta Exponencial para el k seleccionado

xn=xn(:); %Para que sea un vector fila.
N=length(xn);
n=[0:N-1]';
w=2*pi/N;
prod=exp(-j*w*k*n).*xn;
ck=sum(prod)/N;

