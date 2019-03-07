function serie=SerieFourierExpDis(xn)

% Dados en xn los n valores númericos evaluados sobre n=0:N-1 de la función 
% periódica de periodo N, calcula la Serie de Fourier Discreta Exponencial 


%En el caso discreto, el periodo N se puede extraer de la longitud del
%vector, siempre y cuando generemos un xn de la longitud adecuada (la del
%periodo)
N=length(xn);
tpause=1; %Tiempo parado entre cada  dibujo
w=2*pi/N;
syms n

fprintf('Los vectores muestran (k, c_k:\n');
serie=0;
for k=0:N-1 %Vamos añadiendo terminos a la serie, desde k=0 hasta k=N-1, 
            %que sabemos que es el último que necesitamos
    ck=CoefSerieFourierExpDis(xn,k);
    fprintf('k=%d, c_k=%f+j %f\n',k,real(ck),imag(ck));
    serie=serie+ck*exp(j*w*k*n);  
    dibujo(xn,serie,k,tpause);
end

function dibujo(xn,serie,k,tpause)

%En la función de dibujo, extendemos la definición de la función sobre el
%periodo a los periodos sucesivos.

%Evaluamos la función sobre varios periodos. 
N=length(xn);
n_val=-3*N:3*N-1;
fun_val=repmat(xn(:),6,1)';

%Evaluamos la serie sobre varios periodos
serie_val=subs(serie,'n',n_val);

%Como la señal puede ser compleja, representamos la parte real y compleja
%por separado. 
subplot(2,1,1);
stem(n_val,real(fun_val));hold on;
stem(n_val,real(eval(serie_val)));hold off;

title(sprintf('From k=0 to k=%d',k),'FontSize',16);
ylabel('real(x(n))','FontSize',16)
set(gca,'FontSize',16)
grid on;

%La parte imaginaria, si la señal es real, puede ser no nula por los
%cálculos, aunque en ese caso tomará valores despreciables cuando se hayan
%sumado todos los elementos
subplot(2,1,2);

stem(n_val,imag(fun_val)),hold on;
stem(n_val,imag(eval(serie_val)));hold off;
xlabel('n','FontSize',16)
ylabel('imag(x(n))','FontSize',16)

set(gca,'FontSize',16)
grid on;
%Esperamos tpause segundos
pause(tpause);
