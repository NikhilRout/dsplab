clc
close all
clear all

fc1=1500;
fc2=1500;
fs=8000;
n1=2;
n2=5;
n3=10;
rp=1;
rs=20;

[b1,a1]=butter(n1,2*fc1/fs,'high');
[b2,a2]=cheby1(n2,rp,2*fc1/fs,'high');
[b3,a3]=cheby2(n3,rs,2*fc1/fs,'high');
w=0:0.1:pi;

[h1,o1]=freqz(b1,a1,w);
m1=abs(h1);
[h2,o2]=freqz(b2,a2,w);
m2=abs(h2);
[h3,o3]=freqz(b3,a3,w);
m3=abs(h3);

subplot(2,2,1);
plot(o1/pi*fs/2,m1,'linewidth',2);
set(gca,'fontsize',13,'fontweight','bold');
title(['Butterworth High Pass Filter Response (order=', num2str(n1),')'],'fontsize',14,'fontweight','bold');
xlabel('Frequency (Hz)','fontsize',14,'fontweight','bold');
ylabel('Magnitude','fontsize',14,'fontweight','bold');
grid on;

subplot(2,2,2);
plot(o2/pi*fs/2,m2,'linewidth',2);
set(gca,'fontsize',13,'fontweight','bold');
title(['Chebyshev-1 High Pass Filter Response (order=', num2str(n1),')'],'fontsize',14,'fontweight','bold');
xlabel('Frequency (Hz)','fontsize',14,'fontweight','bold');
ylabel('Magnitude','fontsize',14,'fontweight','bold');
grid on;

subplot(2,2,3);
plot(o3/pi*fs/2,m3,'linewidth',2);
set(gca,'fontsize',13,'fontweight','bold');
title(['Chebyshev-2 High Pass Filter Response (order=', num2str(n1),')'],'fontsize',14,'fontweight','bold');
xlabel('Frequency (Hz)','fontsize',14,'fontweight','bold');
ylabel('Magnitude','fontsize',14,'fontweight','bold');
grid on;

subplot(2,2,4);
plot(o3/pi*fs/2,m1,'linewidth',2);
set(gca,'fontsize',13,'fontweight','bold');
title(['Different Butterworth High Pass Filter Response (order=', num2str(n1),')'],'fontsize',14,'fontweight','bold');
xlabel('Frequency (Hz)','fontsize',14,'fontweight','bold');
ylabel('Magnitude','fontsize',14,'fontweight','bold');
grid on;
hold on;
plot(o3/pi*fs/2,m2,'linewidth',2);
hold on;
plot(o3/pi*fs/2,m3,'linewidth',2);
hold on;

legend(['order= ',num2str(n1)]',['order= ',num2str(n2)]',['order= ',num2str(n3)]');
grid on;
