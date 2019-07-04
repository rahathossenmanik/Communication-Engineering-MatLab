clc;
clear;

data = input('Bits: ');
Amplitude=1;
n = 100000;
bitrate = 1;
T = length(data)/bitrate;
N = n*length(data);
dt = T/N;
t = 0:dt:T;
result = zeros(1,length(t));
LastNonZero = Amplitude;
for i = 0:length(data)-1
    if(data(i+1)==0)
        result(i*n+1:(i+1)*n) = 0;
    else
        result(i*n+1:(i+1)*n) = LastNonZero*-1;
        LastNonZero = LastNonZero*-1;
    end
end;
plot(t,result,'LineWidth',3);
title('AMI');
grid on;

y=0;
for i=1:length(t)
    if t(i)>y
        y = y + 1;
        if(result(i)==Amplitude)
            ans_bits(y) = result(i);
        end
        if(result(i)==-Amplitude)
            ans_bits(y) = result(i)*-1;
        end
        if(result(i)==0)
            ans_bits(y) = 0;
        end
    end
end
disp('AMI Decoding: ')
disp(ans_bits)