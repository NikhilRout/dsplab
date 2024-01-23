clc
clear all
close all

subplot(5,1,1);
n=-10:10;
a=-3;
d=a.^n;
stem(n,d,'linewidth',2);
set(gcs,'fontsize',13,'fontweight','bold');
xlabel('Number of Samples,n','fontsize',5,'fontweight','bold');
ylabel('Amplitude,\delta[n]','fontsize',5,'fontweight','bold');
title('Discrete Unit Impulse Sequence(a < -1)','fontsize',9);
grid on;

subplot(5,1,2);
n=-10:10;
a=0.8;
d=a.^n;
stem(n,d,'linewidth',2);
set(gcs,'fontsize',13,'fontweight','bold');
xlabel('Number of Samples,n','fontsize',5,'fontweight','bold');
ylabel('Amplitude,\delta[n]','fontsize',5,'fontweight','bold');
title('Discrete Unit Impulse Sequence(0 < a < 1)','fontsize',9);
grid on;

subplot(5,1,3);
n=-10:10;
a=0.4;
d=a.^n;
stem(n,d,'linewidth',2);
set(gcs,'fontsize',13,'fontweight','bold');
xlabel('Number of Samples,n','fontsize',5,'fontweight','bold');
ylabel('Amplitude,\delta[n]','fontsize',5,'fontweight','bold');
title('Discrete Unit Impulse Sequence(-1 < a < 1)','fontsize',9);
grid on;

subplot(5,1,4);
n=-10:10;
a=-1;
d=a.^n;
stem(n,d,'linewidth',2);
set(gcs,'fontsize',13,'fontweight','bold');
xlabel('Number of Samples,n','fontsize',5,'fontweight','bold');
ylabel('Amplitude,\delta[n]','fontsize',5,'fontweight','bold');
title('Discrete Unit Impulse Sequence(a = -1)','fontsize',9);
grid on;

subplot(5,1,5);
n=-10:10;
a=1;
d=a.^n;
stem(n,d,'linewidth',2);
set(gcs,'fontsize',13,'fontweight','bold');
xlabel('Number of Samples,n','fontsize',5,'fontweight','bold');
ylabel('Amplitude,\delta[n]','fontsize',5,'fontweight','bold');
title('Discrete Unit Impulse Sequence(a = 1)','fontsize',9);
grid on;