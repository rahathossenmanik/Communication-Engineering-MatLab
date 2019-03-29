clear;
clc;

bits = [1 1 0 1 0 1 1 1 0 0 1];
bitrate = 1;
[t,a] = nrzl(bits,bitrate);
plot(t,a,'LineWidth',3);
grid on;

x = 0;
for i=1:length(t)
    if t(i)>x
        x = x + 1;
        if(a(i)==1)
            ans_bits(x) = a(i);
        else
            ans_bits(x) = 0;
        end
    end
end
disp("Decoding: ")
disp(ans_bits)

function [t,x] =  nrzl(bits, bitrate)
    T = length(bits)/bitrate;
    n = 1000;
    N = n*length(bits);
    dt = T/N;
    t = 0:dt:T;
    x = zeros(1,length(t));
    for i = 0:length(bits)-1
        if(bits(i+1)) == 1
            x(i*n+1:(i+1)*n) = 1;
        else
            x(i*n+1:(i+1)*n) = -1;
        end
    end
end