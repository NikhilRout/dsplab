clc;
clear all;
close all;
x = input("Enter the input sequence x[n]: ");
xrev = fliplr(x);
xlen = length(x);
ylen = xlen + xlen -1;
for i = 1:xlen
    for j = 1:xlen
        y(i,i+j-1) = x(i).*xrev(j);
    end
end
y = sum(y);
%y = conv(x, h);

subplot(3, 1, 1);
stem((0:xlen-1),x,'linewidth',2);
set(gca,'fontsize',13,'fontweight','bold');
xlabel('Number of Samples, n','fontsize',12,'fontweight','bold');
ylabel('Amplitude, \delta[n]','fontsize', 12,'fontweight', 'bold');
title('Input x[n]', 'fontsize', 14);
grid on;
hold on;

subplot(3,1,2);
stem((0:xlen-1),xrev,'linewidth',2);
set(gca,'fontsize',13,'fontweight','bold');
xlabel('Number of Samples, n','fontsize',12,'fontweight','bold');
ylabel('Amplitude, \delta[n]','fontsize', 12,'fontweight', 'bold');
title('Reversed x[n]', 'fontsize', 14);
grid on;
hold on;

subplot(3, 1, 3);
stem((0:ylen-1),y,'linewidth',2);
set(gca,'fontsize',13,'fontweight','bold');
xlabel('Number of Samples, n','fontsize',12,'fontweight','bold');
ylabel('Amplitude, \delta[n]','fontsize', 12,'fontweight', 'bold');
title('Output y[n]', 'fontsize', 14);
grid on;
hold on;