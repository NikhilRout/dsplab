clc
clear all
close all

FC_1=400;
FS_1=1000;
f_1=0;
[b_1,a_1]=butter(6,FC_1/(FS_1/2),'low');
w_1=0:0.01:pi;
[h_1,OMEGA_1]=freqz(b_1,a_1,w_1);
M_1=20*log(abs(h_1));
A_1=angle(h_1);
grid on;
subplot(4,2,1);
plot(OMEGA_1/pi,M_1,'LineWidth',2);
set(gca,'fontsize',13,'fontweight','bold');
xlabel('Normalized Frequency','fontweight','bold','fontsize',13);
ylabel('Gain(dB)','fontweight','bold','fontsize',13);
title("IIR Filter Magnitude Response (LOW PASS)");
grid on;
subplot(4,2,2);
plot(OMEGA_1/pi,A_1,'LineWidth',2);
set(gca,'fontsize',13,'fontweight','bold');
xlabel('Normalized Frequency','fontweight','bold','fontsize',13);
ylabel('Phase angle (Radians)','fontweight','bold','fontsize',13);
title("IIR Filter Phase Response (LOW PASS)");
grid on;

FC_1=90;
FS_1=1000;
[b_1,a_1]=butter(6,FC_1/(FS_1/2),'high');
w_1=0:0.01:pi;
[h_1,OMEGA_1]=freqz(b_1,a_1,w_1);
M_1=20*log(abs(h_1));
A_1=angle(h_1);
grid on;
subplot(4,2,3);
plot(OMEGA_1/pi,M_1,'LineWidth',2);
set(gca,'fontsize',13,'fontweight','bold');
xlabel('Normalized Frequency','fontweight','bold','fontsize',13);
ylabel('Gain(dB)','fontweight','bold','fontsize',13);
title("IIR Filter Magnitude Response (HIGH PASS)");
grid on;
subplot(4,2,4);
plot(OMEGA_1/pi,A_1,'LineWidth',2);
set(gca,'fontsize',13,'fontweight','bold');
xlabel('Normalized Frequency','fontweight','bold','fontsize',13);
ylabel('Phase angle (Radians)','fontweight','bold','fontsize',13);
title("IIR Filter Phase Response (HIGH PASS)");
grid on;

FS_3=3000;
wp_3=[200 900]/FS_3;
ws_3=[100 1100]/FS_3;
[n_3,wn_3]=buttord(wp_3,ws_3,0.1,1);
[b_3,a_3]=butter(n_3,wn_3);
w_3=0:0.01:pi;
[h_3,OMEGA_3]=freqz(b_3,a_3,w_3);
M_3=20*log(abs(h_3));
A_3=angle(h_3);
subplot(4,2,5);
plot(OMEGA_3/pi,M_3,'LineWidth',2);
set(gca,'fontsize',13,'fontweight','bold');
xlabel('Normalized Frequency','fontweight','bold','fontsize',13);
ylabel('Gain(dB)','fontweight','bold','fontsize',13);
title("IIR Filter Magnitude Response (BAND PASS)");
grid on;
subplot(4,2,6);
plot(OMEGA_3/pi,A_3,'LineWidth',2);
set(gca,'fontsize',13,'fontweight','bold');
xlabel('Normalized Frequency','fontweight','bold','fontsize',13);
ylabel('Phase angle (Radians)','fontweight','bold','fontsize',13);
title("IIR Filter Phase Response (BAND PASS)");
grid on;

FS_4=3000;
n_4=[200 900]/FS_4;
ws_4=[100 1100]/FS_4;
[n_4,wn_4]=buttord([0.3,0.7],[0.4,0.6],0.4,50);
[b_4,a_4]=butter(n_4,wn_4,'stop');
w_4=0:0.01:pi;
[h_4,OMEGA_4]=freqz(b_4,a_4,w_4);
M_4=20*log(abs(h_4));
A_4=angle(h_4);
subplot(4,2,7);
plot(OMEGA_4/pi,M_4,'LineWidth',2);
set(gca,'fontsize',13,'fontweight','bold');
xlabel('Normalized Frequency','fontweight','bold','fontsize',13);
ylabel('Gain(dB)','fontweight','bold','fontsize',13);
title("IIR Filter Magnitude Response (STOP BAND)");
grid on;
subplot(4,2,8);
plot(OMEGA_4/pi,A_4,'LineWidth',2);
set(gca,'fontsize',13,'fontweight','bold');
xlabel('Normalized Frequency','fontweight','bold','fontsize',13);
ylabel('Phase angle (Radians)','fontweight','bold','fontsize',13);
title("IIR Filter Phase Response (STOP BAND)");
grid on;
