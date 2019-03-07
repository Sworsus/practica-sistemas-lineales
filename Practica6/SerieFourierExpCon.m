function serie=SerieFourierExpCon(funcion,T,ktotal)

% serie=SerieFourierExpCon(funcion,T,ktotal)
%
% Dada la función simbólica funcion, definida sobre el periodo T
% entre -T/2 y T/2, calcula el desarrollo de la Serie de Fourier Exponencial
% entre k=-ktotal y ktotal. 

syms t;
tpause=0.2; %Tiempo parado entre cada  dibujo
w=2*pi/T;


%Coeficiente c0
k=0;
ck=CoefSerieFourierExpCon(funcion,T,k);
serie=ck;
fprintf('Los vectores muestran (k, c_k, y c_{-k}):\n');
pretty([0,ck,0]);
%Realizamos al representacion grafica
dibujo(funcion,serie,T,k,tpause); %Solo hay c0, no c-0


for k=1:ktotal %Vamos añadiendo terminos a la serie, por parejas (ck y c_{-k}) 
               %desde k=1 hasta el ktotal seleccionado
    ck_p=CoefSerieFourierExpCon(funcion,T,k);
    ck_n=CoefSerieFourierExpCon(funcion,T,-k);
    pretty([k,ck_p,ck_n])
    serie=serie+ck_p*exp(j*w*k*t)+ck_n*exp(-j*w*k*t);  
    dibujo(funcion,serie,T,k,tpause);
end


function dibujo(funcion,serie,T,k,tpause);

%En la función de dibujo, extendemos la definición de la función sobre el
%periodo a los periodos sucesivos.
syms t
funbasic=funcion*(heaviside(t+T/2)-heaviside(t-T/2));
fun=0;
for Tdes=-3*T:T:3*T
    fun=fun+subs(funbasic,'t',t+Tdes);
end
%Evaluamos la función sobre varios periodos. 
t_val=-3*T:T/100:3*T;
fun_val=subs(fun,'t',t_val);

%Evaluamos la serie sobre varios periodos
serie_val=subs(serie,'t',t_val);

%Como la señal puede ser compleja, representamos la parte real y compleja
%por separado. 
subplot(2,1,1);
h=plot(t_val,real(eval(fun_val)),t_val,real(eval(serie_val)));
set(h,'Linewidth',2);
title(sprintf('From k=-%d to k=%d',k,k),'FontSize',16);
ylabel('real(x(t))','FontSize',16)
set(gca,'FontSize',16)
grid on

%La parte imaginaria, si la señal es real, puede ser no nula por los
%cálculos, aunque en ese caso tomará valores despreciables. 
subplot(2,1,2);
h=plot(t_val,imag(eval(fun_val)),t_val,imag(eval(serie_val)));
set(h,'Linewidth',2);
xlabel('t (s)','FontSize',16)
ylabel('imag(x(t))','FontSize',16)

set(gca,'FontSize',16)
grid on;
%Esperamos tpause segundos
pause(tpause);
