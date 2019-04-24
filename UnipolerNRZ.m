clear;
clc;

bits = [1 1 0 1 0 1 1 1 0 0 1];
bitrate = 1;
T = length(bits)/bitrate;
n = 1000;
N = n*length(bits);
dt = T/N;
t = 0:dt:T;
x = zeros(1,length(t));
for i = 0:length(bits)-1
    if(bits(i+1)) == 1
        x(i*n+1:(i+1)*n) = 1;
    end
end

plot(t,x,'LineWidth',3);
grid on;

a = x;
x = 0;
for i=1:length(t)
    if t(i)>x
        x = x + 1;
        ans_bits(x) = a(i);
    end
end

disp('Unipoler NRZ Decoding: ')
disp(ans_bits)