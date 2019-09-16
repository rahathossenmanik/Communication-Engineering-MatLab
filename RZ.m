clear all;
close all;
clc;

bits = input('prompt');
bitrate = 1;
n = 1000;
T = length(bits)/bitrate;
N = n*length(bits);
dt = T/N;
t = 0:dt:T;
x = zeros(1,length(t));
for i=1:length(bits)
  if bits(i)==1
    x((i-1)*n+1:(i-1)*n+n/2) = 1;
  else x((i-1)*n+1:(i-1)*n+n/2) = -1;
  endif
endfor
plot(t, x, 'Linewidth', 3);
counter = 0;
for i = 1:length(t)
  if t(i)>counter
    counter = counter + 1;
    if x(i)>0
      result(counter) = x(i);
    else result(counter) = 0;
    endif
  endif
endfor
disp('RZ Decoding:');
disp(result);