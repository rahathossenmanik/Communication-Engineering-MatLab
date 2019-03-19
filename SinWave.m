clear;
clc;

T = 1;
fs = 10000;
a = 1;
f = 1;
t = (0: 1/fs: T);
x = a*(sin(2*pi*f*t));
y = 2*(sin(2*pi*f*t));
plot(t, x+y)