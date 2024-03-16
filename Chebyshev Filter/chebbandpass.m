clc
clear all
close all
 
fc1=1500;
fc2=500;
fs=8000;
n1=2;
n2=5;
n3=10;
rp=1;
rs=20;
 
wn=[2*fc1/fs  2*fc2/fs];
[b1,a1]=butter(n1,wn,'bandpass');
[b2,a2]=cheby1(n2,rp,wn,'bandpass');
[b3,a3]=cheby2(n3,rs,wn,'bandpass');
w=0:0.01:pi;
 
[h1,o1]=freqz(b1,a1,w);
m1=abs(h1);
[h2,o2]=freqz(b2,a2,w);
m2=abs(h2);
[h3,o3]=freqz(b3,a3,w);
m3=abs(h3);
 
subplot(2,2,1);
plot(o1/pi*fs/2,m1 ,'linewidth',2);
set(gca,'fontsize',13,'fontweight','bold');
title(['Butterworth Band Pass Filter Response(Order=',num2str(n1),')'],'fontsize',14);
ylabel('Magnitude','fontsize',12,'fontweight','bold');
xlabel('Frequency(Hz)','fontsize',12,'fontweight','bold');
grid on;
 
subplot(2,2,2);
plot(o2/pi*fs/2,m2 ,'linewidth',2);
set(gca,'fontsize',13,'fontweight','bold');
title(['Chebyshev-1 Band Pass Filter Response(Order=',num2str(n2),')'],'fontsize',14);
ylabel('Magnitude','fontsize',12,'fontweight','bold');
xlabel('Frequency(Hz)','fontsize',12,'fontweight','bold');
grid on;
 
subplot(2,2,3);
plot(o3/pi*fs/2,m3 ,'linewidth',2);
set(gca,'fontsize',13,'fontweight','bold');
title(['Chebyshev-2 Band Pass Filter Response(Order=',num2str(n3),')'],'fontsize',14);
ylabel('Magnitude','fontsize',12,'fontweight','bold');
xlabel('Frequency(Hz)','fontsize',12,'fontweight','bold');
grid on;
 
 
subplot(2,2,4);
plot(o3/pi*fs/2,m1 ,'linewidth',2);
set(gca,'fontsize',13,'fontweight','bold');
title(['Butterworth Band Pass Filter Response for different Orders'],'fontsize',14);
ylabel('Magnitude','fontsize',12,'fontweight','bold');
xlabel('Frequency(Hz)','fontsize',12,'fontweight','bold');
grid on
hold on;
plot(o3/pi*fs/2,m2 ,'linewidth',2);
hold on;
plot(o3/pi*fs/2,m3 ,'linewidth',2);
hold on;
legend(['Order = ',num2str(n1)],['Order = ',num2str(n2)], ['Order = ',num2str(n3)]);
grid on;

