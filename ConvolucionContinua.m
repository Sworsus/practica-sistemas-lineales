%Demostraci�n grafica de la funci�n de convoluci�n
%E. Besada-Portas. Oct. 2016.

%Declaraci�n de las variables
close all
clear all
syms t


%Instantes de tiempo en los que se evaluar� la convolucion
tval=-10:0.5:20;
%Instantes de tiempo que se utilizar�n para la representaci�n grafica
tshow=-20:0.1:20;


%Definici�n de las funciones simb�licas
x = (-1 <= t).*(5*t+5) + (t <= 0).*(5*t+5) + (0 <= t).*(5-5*t) + (t <= 1).*(5-5*t)
y = dirac(t-10)+dirac(t)+dirac(t-10)

%Representaci�n gr�fica de las funciones originales y la reflejada
figure;
subplot(3,1,1),hold on;
xshow=subs(x,'t',tshow);
plot(tshow,xshow,'b','Linewidth',2);
yshow=subs(y,'t',tshow);
plot(tshow,yshow,'r','Linewidth',2);
disp('Senales originales');
drawnow;disp('Pulsar enter');pause;

yinv=subs(y,'t',-tshow);
hold on,plot(tshow,yinv,'g','Linewidth',2);
xlabel('t');
legend('x(t)','y(t)','y(-t)');
%axis(eval([tshow(1)-1 tshow(end)+1 min([xshow,yshow])-1 max([xshow,yshow])+1]));
disp('Senales originales e invertida temporalmente');
drawnow;disp('Pulsar enter');pause;


%Hacemos x(t) --> x(tau)
x=subs(x,'t','tau');
xconvy=[];
txy=[];
first=1;
for tcurrent=tval
    %Dibujamos la funci�n que est� quieta
    subplot(3,1,2),hold off;
    plot(tshow,xshow,'b','Linewidth',2);hold on;
    %y(t) --> y(t-\tau')
    yr=subs(y,'t','t-tau');
    %Asignamos a t el valor tcurrent en el que queremos evaluarla
    yr=subs(yr,'t',tcurrent);
    %Representamos la funci�n reflejada y desplazada (verde)
    yshow=subs(yr,'tau',tshow);
    plot(tshow,yshow,'g','Linewidth',2);
    %Calculamos el producto
    prod=x*yr;
    %Representamos el producto
    prodshow=subs(prod,'tau',tshow);
    plot(tshow,prodshow,'k','Linewidth',2);
    xlabel('\tau');
    legend('x(\tau)','y(t-\tau)','x(\tau) y(t-\tau)');
    axis(eval([tshow(1)-1 tshow(end)+1 min([xshow,yshow,prodshow])-1 max([xshow,yshow,prodshow])+1]));


    %Calculamos la integral del producto sobre tau
    %y lo almacenamos en un vector
    try
    convolucion=int(prod,'tau',-inf,inf); %Si se puede calcular devuelve un valor
    catch
    convolucion=NaN; %Si no se puede calcular dejamos un hueco
    end
    %A�adimos el nuevo valor calculado
    xconvy(end+1)=convolucion;
    txy(end+1)=tcurrent;
    disp(sprintf('Resultado de la convolucion en t=%f es %f',tcurrent,eval(convolucion)));

    %Representamos graficamente los valores de (x*y)(t), para los
    %t anteriormente calculados y para el t actual.
    subplot(3,1,3);plot(txy,xconvy,'m','Linewidth',2);
    axis([tshow(1)-1 tshow(end)+1 min([xconvy])-1 max([xconvy])+1]);


    legend('(x*y)(t)')
    xlabel('t');

    if first==1
        drawnow;disp('Pulsar enter');pause;
    else
        %pause(ppaso);
        drawnow;
    end
    first=0;

end
