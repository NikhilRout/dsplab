clc
clear all
close all
n = -2:10;
d = (n>=0);
stem(n, d.*n, 'linewidth',2);
set(gca,'fontsize',13,'fontweight','bold');
xlabel('Number of Samples, n','fontsize', 12, 'fontweight','bold');
ylabel('Amplitude, \delta[n]', 'fontsize', 12, 'fontweight', 'bold');
title('Discrete Ramp Sequence', 'fontsize', 14);
grid on;
