clc;
clear all;
close all;
x = input("Enter the input sequence x[n]: ");
h = input("Enter the input sequence h[n]: ");
hrev = fliplr(h);
xlen = length(x);
hlen = length(h);
ylen = xlen + hlen -1;
for i = 1:xlen
    for j = 1:hlen
        y(i,i+j-1) = x(i).*hrev(j);
    end
end
y = sum(y);
%y = conv(x, h);

subplot(4, 1, 1);
stem((0:xlen-1),x,'linewidth',2);
set(gca,'fontsize',13,'fontweight','bold');
xlabel('Number of Samples, n','fontsize',9,'fontweight','bold');
ylabel('Amplitude, \delta[n]','fontsize', 9,'fontweight', 'bold');
title('Input x[n]', 'fontsize', 14);
grid on;
hold on;

subplot(4,1,2);
stem((0:hlen-1),h,'linewidth',2);
set(gca,'fontsize',13,'fontweight','bold');
xlabel('Number of Samples, n','fontsize',9,'fontweight','bold');
ylabel('Amplitude, \delta[n]','fontsize', 9,'fontweight', 'bold');
title('Input h[n]', 'fontsize', 14);
grid on;
hold on;

subplot(4, 1, 3);
stem((0:hlen-1),hrev,'linewidth',2);
set(gca,'fontsize',13,'fontweight','bold');
xlabel('Number of Samples, n','fontsize',9,'fontweight','bold');
ylabel('Amplitude, \delta[n]','fontsize', 9,'fontweight', 'bold');
title('Reversed h[n]', 'fontsize', 14);
grid on;
hold on;

subplot(4, 1, 4);
stem((0:ylen-1),y,'linewidth',2);
set(gca,'fontsize',13,'fontweight','bold');
xlabel('Number of Samples, n','fontsize',9,'fontweight','bold');
ylabel('Amplitude, \delta[n]','fontsize', 9,'fontweight', 'bold');
title('Output y[n]', 'fontsize', 14);
grid on;
hold on;