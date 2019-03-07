% %S1B
% clear all;
% polos=roots([1,12,25,50])
% gs=tf([5,25,30],[1,12,25,50]);
% step(gs);

% %S2A
% clear all
% polos=roots([1,-1.707,0.9571,-0.25])
% gz=tf([1,-2,-2],[1,-1.707,0.9571,-0.25],-1);
% step(gz,50000);


% %S2C
% clear all
% polos=roots([1,-0.5,0.01,-0.005])
% gz=tf([1,0,0],[1,-0.5,0.01,-0.005],-1);
% step(gz,20);

grid;