% %A
% clear all;
% syms w;
% xF=(5*sin(3*(w+3)))/(w+3);
% xt=ifourier(xF)

% %B
% clear all;
% syms w;
% xF=(dirac(w-2)+dirac(w+2))-7*j*(dirac(w-3*pi)-dirac(w+3*pi));
% xt=simplify(ifourier(xF))

% %C
% clear all;
% syms w;
% xF=(heaviside(w+1)-heaviside(w-1))*exp(-j*w);
% xt=simplify(ifourier(xF))