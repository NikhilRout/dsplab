clc
clear all
close all

syms t;
t1=0:0.3:2*pi;
subplot(2,2,1);
x=sin(t)+cos(t);
stem(t1, subs(x,t1),'linewidth',2);
set(gca,'fontsize',13,'fontweight','bold');
xlabel('Number of samples,n','fontsize',11,'fontweight','bold');
ylabel('Amplitude','fontsize',11,'fontweight','bold');
title('Sin(t) + Cos(t)','fontsize',14);
grid on;

subplot(2,2,2);
x=sin(t)*cos(t);
stem(t1, subs(x,t1),'linewidth',2);
set(gca,'fontsize',13,'fontweight','bold');
xlabel('Number of samples,n','fontsize',11,'fontweight','bold');
ylabel('Amplitude','fontsize',11,'fontweight','bold');
title('Sin(t) * Cos(t)','fontsize',14);
grid on;

subplot(2,2,3);
x=sin(t);
stem(t1, 2*subs(x,t1),'linewidth',2);
set(gca,'fontsize',13,'fontweight','bold');
xlabel('Number of samples,n','fontsize',11,'fontweight','bold');
ylabel('Amplitude','fontsize',11,'fontweight','bold');
title('Amplitude Scaling by 2','fontsize',14);
grid on;

subplot(2,2,4);
x=sin(t-pi);
stem(t1, subs(x,t1),'linewidth',2);
set(gca,'fontsize',13,'fontweight','bold');
xlabel('Number of samples,n','fontsize',11,'fontweight','bold');
ylabel('Amplitude','fontsize',11,'fontweight','bold');
title('Shifting Operation by \pi','fontsize',14);
grid on;
