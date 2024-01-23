clc
clear all
close all

syms t;
t1=0:0.3:2*pi;
x=sin(t);
subplot(2,1,1);
stem(t1,subs(x,t1),'linewidth',2);
set(gcs,'fontsize',13,'fontweight','bold');
xlabel('Number of Samples,n','fontsize',12,'fontweight','bold');
ylabel('Amplitude,\delta[n]','fontsize',12,'fontweight','bold');
title('Sine Wave Sequence','fontsize',14);
grid on;

y=diff(x,t);
t=0:0.3:2*pi;
subplot(2,1,2)
stem(t,subs(y,t),'linewidth',2);
set(gcs,'fontsize',13,'fontweight','bold');
xlabel('Number of Samples,n','fontsize',12,'fontweight','bold');
ylabel('Amplitude,\delta[n]','fontsize',12,'fontweight','bold');
title('Differentiated Sine Wave Sequence','fontsize',14);
grid on;
