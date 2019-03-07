function serie=SerieFourierExpDis(xn)

% Dados en xn los n valores n�mericos evaluados sobre n=0:N-1 de la funci�n 
% peri�dica de periodo N, calcula la Serie de Fourier Discreta Exponencial 


%En el caso discreto, el periodo N se puede extraer de la longitud del
%vector, siempre y cuando generemos un xn de la longitud adecuada (la del
%periodo)
N=length(xn);
tpause=1; %Tiempo parado entre cada  dibujo
w=2*pi/N;
syms n

fprintf('Los vectores muestran (k, c_k:\n');
serie=0;
for k=0:N-1 %Vamos a�adiendo terminos a la serie, desde k=0 hasta k=N-1, 
            %que sabemos que es el �ltimo que necesitamos
    ck=CoefSerieFourierExpDis(xn,k);
    fprintf('k=%d, c_k=%f+j %f\n',k,real(ck),imag(ck));
    serie=serie+ck*exp(j*w*k*n);  
    dibujo(xn,serie,k,tpause);
end

function dibujo(xn,serie,k,tpause)

%En la funci�n de dibujo, extendemos la definici�n de la funci�n sobre el
%periodo a los periodos sucesivos.

%Evaluamos la funci�n sobre varios periodos. 
N=length(xn);
n_val=-3*N:3*N-1;
fun_val=repmat(xn(:),6,1)';

%Evaluamos la serie sobre varios periodos
serie_val=subs(serie,'n',n_val);

%Como la se�al puede ser compleja, representamos la parte real y compleja
%por separado. 
subplot(2,1,1);
stem(n_val,real(fun_val));hold on;
stem(n_val,real(eval(serie_val)));hold off;

title(sprintf('From k=0 to k=%d',k),'FontSize',16);
ylabel('real(x(n))','FontSize',16)
set(gca,'FontSize',16)
grid on;

%La parte imaginaria, si la se�al es real, puede ser no nula por los
%c�lculos, aunque en ese caso tomar� valores despreciables cuando se hayan
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
