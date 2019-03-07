syms t 
T=10;
funcion=-1+2*heaviside(t);
ktotal=11;
figure;serie=SerieFourierExpCon(funcion,T,ktotal)

syms t 
T=10;
funcion=1+2/5*(-t)*(heaviside(t)-heaviside(t-T/2))+2/5*t*(heaviside(t+T/2)-heaviside(t));
ktotal=11;
figure;serie=SerieFourierExpCon(funcion,T,ktotal);


xn=[ones(10,1);-ones(10,1)];
figure;serie=SerieFourierExpDis(xn)

xn=linspace(1,-1,10);
xn=[xn,xn(end:-1:1)];
figure;serie=SerieFourierExpDis(xn)

