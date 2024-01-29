clc
clear all
close all
b1=[1 -1.6180 1];
a1=[1 -1.5161 0.8781];
[Z,P,K] = tf2zp(b1, a1);
figure(1);
zplane(b1, a1);
set(gca,'fontsize',13,'fontweight','bold');
[HZ1,HP1,HT1]=zplane(b1,a1);
set(findobj(HZ1,'Type','line'),'color','g','linewidth',2);
set(findobj(HT1,'Type','line'),'color','b','linewidth',2);
set(findobj(HP1,'Type','line'),'color','r','linewidth',2);
title('Pole-Zero Plot: Stable System','fontsize',15);
grid on;

b1=[1 -1.6180 1];
a1=[1 -1.5161 1.8781];
[Z,P,K] = tf2zp(b1, a1);
figure(2);
zplane(b1, a1);
set(gca,'fontsize',13,'fontweight','bold');
[HZ1,HP1,HT1]=zplane(b1,a1);
set(findobj(HZ1,'Type','line'),'color','g','linewidth',2);
set(findobj(HT1,'Type','line'),'color','b','linewidth',2);
set(findobj(HP1,'Type','line'),'color','r','linewidth',2);
title('Pole-Zero Plot: Unstable System','fontsize',15);
grid on;

b1=[1 -1.6180 1];
a1=[1 -1.5161 1];
[Z,P,K] = tf2zp(b1, a1);
figure(3);
zplane(b1, a1);
set(gca,'fontsize',13,'fontweight','bold');
[HZ1,HP1,HT1]=zplane(b1,a1);
set(findobj(HZ1,'Type','line'),'color','g','linewidth',2);
set(findobj(HT1,'Type','line'),'color','b','linewidth',2);
set(findobj(HP1,'Type','line'),'color','r','linewidth',2);
title('Pole-Zero Plot: Marginally Stable System','fontsize',15);
grid on;