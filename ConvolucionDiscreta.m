%Demostración grafica de la función de convolución
%E. Besada-Portas. Feb. 2016.

%Declaración de las variables
close all
clear all
syms n


%Instantes en los que se evaluará la convolucion
nval=-20:20;
%Instanntes que se utilizarán para la representación grafica
nshow=-30:30;

%Definir la funciones en simbolico
%Importante: heaviside es una función que vale 0.5 en n=0.
%Para evitarlo en discreto, restarle un valor con decimal (porque así en
%los n enteros valdrá 1 o 0 
y=(n-5)*(heaviside(n-9.5) - heaviside(n - 14.5)) 
%y=(heaviside(n-3) - heaviside(n - 8))
x=3*sin(2*pi*n/10)*(heaviside(n-0.5) - heaviside(n - 4.5))


%Representación gráfica de las funciones originales y la reflejada
figure;
subplot(3,1,1),hold on;
xshow=subs(x,'n',nshow);
stem(nshow,xshow,'b','Linewidth',2);
yshow=subs(y,'n',nshow);
hold on,stem(nshow,yshow,'r','Linewidth',2);
disp('Señales originales');
drawnow;disp('Pulsar enter');pause;

yinv=subs(y,'n',-nshow);
hold on,stem(nshow,yinv,'g','Linewidth',2);
xlabel('n');
legend('x(n)','y(n)','y(-n)');
axis(eval([nshow(1)-1 nshow(end)+1 min([xshow,yshow])-1 max([xshow,yshow])+1]));
disp('Señales originales e invertida temporalmente');
drawnow;disp('Pulsar enter');pause;


%Hacemos x(n) --> x(k)
x=subs(x,'n','k');
xconvy=[];
nxy=[];
first=1;

for ncurrent=nval
    
    %Dibujamos la función que está quieta
    subplot(3,1,2),hold off,
    stem(nshow,xshow,'b','Linewidth',2);hold on;
    %y(n) --> y(n-k)
    yr=subs(y,'n','n-k');
    %Asignamos a n el valor ncurrent en el que queremos evaluarla
    yr=subs(yr,'n',ncurrent);
    %Representamos la función reflejada y desplazada (verde)
    yshow=subs(yr,'k',nshow);
    stem(nshow,yshow,'g','Linewidth',2);
    %Calculamos el producto
    prodval=xshow.*yshow;
    %Representamos el producto
    stem(nshow,prodval,'k','Linewidth',2);
    xlabel('k');
    legend('x(k)','y(n-k)','x(k) y(n-k)');
    axis(eval([nshow(1)-1 nshow(end)+1 min([xshow,yshow,prodval])-1 max([xshow,yshow,prodval])+1]));
    
    %Calculamos la integral del producto sobre tau
    %y lo almacenamos en un vector
    convolucion=sum(prodval)
    xconvy(end+1)=convolucion;
    nxy(end+1)=ncurrent;
    disp(sprintf('Resultado de la convolucion en n=%f es %f',ncurrent,eval(convolucion)));
       
    %Representamos graficamente los valores de (x*y)(n), para los
    %t anteriormente calculados y para el t actual.
    subplot(3,1,3);stem(nxy,xconvy,'m','Linewidth',2);
    axis([nshow(1)-1 nshow(end)+1 min([xconvy])-1 max([xconvy])+1]);
    legend('(x*y)(n)')
    xlabel('t');
    if first==1
        drawnow;disp('Pulsar enter');pause;
    else
        drawnow;
        pause(0.1); %Como las operaciones son muy rapidas, introducimos un retardo en la representación 
    end
    first=0;
end



