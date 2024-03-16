clc
clear all
close all
 
fc1 = 1500;  
fc2 = 500;   
fs = 8000;  
 
n1 = 2;
n2 = 5;
n3 = 10;
rp = 1;      
rs = 20;     
 
wn = [2*fc1/fs 2*fc2/fs]; 
 
[b1, a1] = butter(n1, wn, 'stop');  
[b2, a2] = cheby1(n2, rp, wn, 'stop'); 
[b3, a3] = cheby2(n3, rs, wn, 'stop'); 
 
 
w = 0:0.1:pi;
 
 
[h1, om1] = freqz(b1, a1, w);
m1 = abs(h1);
[h2, om2] = freqz(b2, a2, w);
m2 = abs(h2);
[h3, om3] = freqz(b3, a3, w);
m3 = abs(h3);
 
subplot(2,2,1);
plot(om1/pi*fs/2, m1, 'linewidth',2);
title(['Butterworth Bandstop (order ' num2str(n1) ')'], 'fontsize', 14);
xlabel('Frequency (Hz)', 'fontsize', 14);
ylabel('Magnitude', 'fontsize', 14);
grid on;
 
subplot(2,2,2);
plot(om2/pi*fs/2, m2, 'linewidth',2);
title(['Chebyshev Type 1 (order ' num2str(n2) ')'], 'fontsize', 14);
xlabel('Frequency (Hz)', 'fontsize', 14);
ylabel('Magnitude', 'fontsize', 14);
grid on;
 
subplot(2,2,3);
plot(om3/pi*fs/2, m3, 'linewidth',2);
title(['Chebyshev Type 2 (order ' num2str(n3) ')'], 'fontsize', 14);
xlabel('Frequency (Hz)', 'fontsize', 14);
ylabel('Magnitude', 'fontsize', 14);
grid on;
 
subplot(2,2,4);
hold on;
plot(om3/pi*fs/2, m1, 'linewidth',2);
plot(om3/pi*fs/2, m2, 'linewidth',2);
plot(om3/pi*fs/2, m3, 'linewidth',2);
legend(['order ' num2str(n1)], ['order ' num2str(n2)], ['order ' num2str(n3)]);
xlabel('Frequency (Hz)', 'fontsize', 14);
ylabel('Magnitude', 'fontsize', 14);
grid on;
hold off;
 
