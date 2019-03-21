clear;
clc;

a = 1;
N = 20;
f = 1/N;
n = 0:1:2*N;
T = 20;
F = 1/T;
t = 0:0.1:3*T;
theta = 30;
subplot(2,1,1);
x = a*cos((2*pi*f*n) + theta/180*pi);
stem(n,x)
subplot(2,1,2);
y = a*cos((2*pi*F*t) + theta/180*pi);
plot(t,y)