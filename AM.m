clear;
clc;
close;

Ac=input('Enter carrier signal amplitude: ');
Am=input('Enter message signal amplitude: ');
fc=input('Enter carrier frequency: ');
fm=input('Enter message frequency: ');
m=input('Enter modulation index: ');
t=input('Enter time period: ');
t1=linspace(0,t,1000);
y1=sin(2*pi*fm*t1);
y2=sin(2*pi*fc*t1);
x=(1+m.*y1).*(Ac.*y2);
subplot(3,1,1);
plot(t1,y1);
xlabel('Time');
ylabel('Amplitude');
title('Message signal')
subplot(3,1,2)
plot(t1,y2);
xlabel('Time');
ylabel('Amplitude');
title('Carrier signal');
subplot(3,1,3);
plot(t1,x,'r');
xlabel('Time');
ylabel('Amplitude');
title('Modulated signal');