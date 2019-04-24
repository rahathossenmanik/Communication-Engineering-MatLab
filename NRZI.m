clear;
clc;

bits = [1 1 0 1 0 1 1 1 0 0 1];
bitrate = 1;
V = 1;
T = length(bits)/bitrate;
n = 1000;
N = n*length(bits);
dt = T/N;
t = 0:dt:T;
x = zeros(1,length(t));
previous = 0;
for i = 0:length(bits)-1
    if(bits(i+1)) == 1
        if previous == 0
            x(i*n+1:(i+1)*n) = V;
            previous = 1;
        else
            x(i*n+1:(i+1)*n) = 0;
            previous = 0;
        end
    else
        x(i*n+1:(i+1)*n) = previous;
    end
end

plot(t,x,'LineWidth',3);
grid on;