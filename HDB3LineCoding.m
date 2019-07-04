clear;
clc;

bits = [1 0 0 0 0 1 1 0 0 0 0 1];
bitrate = 1;
T = length(bits)/bitrate;
n = 1000;
N = n*length(bits);
dt = T/N;
t = 0:dt:T;
x = zeros(1,length(t));
zero=0;
one=0;
LastNonZero = -1;
for i = 0:length(bits)-1
    if(bits(i+1)) == 1
        one = one+1;
        x(i*n+1:(i+1)*n) = -LastNonZero;
        LastNonZero = -LastNonZero;
    else
        x(i*n+1:(i+1)*n) =0;
        zero=zero+1;
            if(zero==4)
                    if(rem( one,2 )==0)
                        x((i-3)*n+1:(i-2)*n) = -LastNonZero;
                        x(i*n+1:(i+1)*n) = -LastNonZero;
                        LastNonZero = -LastNonZero;
                        zero=0;
                    else
                        x(i*n+1:(i+1)*n) = LastNonZero;
                        zero=0;
                    end
            end
    end
end

plot(t,x,'LineWidth',3);
grid on;
a = x;
x = 0;
for i=1:length(t)
    if t(i)>x
        x = x + 1;
        if(a(i)==1)
            y(x) = a(i);
        else if (a(i)==-1)
                y(x) = -1;
        else
            y(x) = 0;
            end
        end
    end
end
z = y;
for i = 1:length(bits)-4
    if(z(i)~=0 && z(i)==z(i+4))
        z(i+4) = 0;
    end
    if(z(i+1)~=0 && z(i+1)==z(i+4))
        z(i+1) = 0;
        z(i+4) = 0;
    end
end
z = abs(z);
disp('Original Data: ')
disp(bits)
disp('HDB3 Encoding: ')
disp(y)
disp('HDB3 Decoding: ')
disp(z)