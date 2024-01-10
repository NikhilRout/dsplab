clc
clear all
close all
amp = 1;
n = -10:10;
d = (n>=0);
stem(n, d*amp, 'linewidth',2);
set(gca,'fontsize',13,'fontweight','bold');
xlabel('Number of Samples, n','fontsize', 12, 'fontweight','bold');
ylabel('Amplitude, \delta[n]', 'fontsize', 12, 'fontweight', 'bold');
title('Discrete Unit Step Sequence', 'fontsize', 14);
grid on;

