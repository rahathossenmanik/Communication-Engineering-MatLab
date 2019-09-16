clc;
clear all;
close all;

Ac = input('Carrier Signal Amplitude: ');
Am = input('Message Signal Amplitude: ');
fc = input('Carrier Signal Frequency: ');
fm = input('Message Signal Frequency: ');
while fm>fc
  disp('Message Signal Frequency is Incorrect.');
  fm = input('Message Signal Frequency: ');
end
T = input('Time Period: ');
t = 0:0.001:T;
Ym = Am.*sin(2*pi*fm*t);
subplot(3, 1, 1);
plot(t, Ym);
title('Message Signal');
Yc = Ac.*sin(2*pi*fc*t);
subplot(3, 1, 2);
plot(t, Yc);
title('Carrier Signal');
Z = (Ac + Ym).*Yc;
subplot(3, 1, 3);
plot(t, Z, 'r');
title('Modulated Signal');