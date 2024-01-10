clc
clear all
close all
n = -10:10;
N3 =21;
d = [zeros(1,(N3-1)/2),ones(1,1),zeros(1,(N3-1)/2)];
stem(n, d, 'linewidth',2);
set(gca,'fontsize',13,'fontweight','bold');
xlabel('Number of Samples, n','fontsize', 12, 'fontweight','bold');
ylabel('Amplitude, \delta[n]', 'fontsize', 12, 'fontweight', 'bold');
title('Discrete Unit Impulse Sequence', 'fontsize', 14);
grid on;
