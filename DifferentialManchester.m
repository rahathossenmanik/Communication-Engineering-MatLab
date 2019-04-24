clc;
clear;

data = input('Bits: ');
k=1;
t=0;
Amplitude=1;
samplesize = 100000;
bitrate = 1;
for j=1:length(data)
        if data(j)==1
            for i=0:1/samplesize:(bitrate/2) 
                 result(k)=Amplitude;
                 time(k)=t;
            
                 k=k+1;
                 t=t+1;
             end;
             for l=i:1/samplesize:bitrate
                 result(k)=-Amplitude;
                 time(k)=t;
                 k=k+1;
                 t=t+1;
             end;
            
        else
             for i=0:1/samplesize:(bitrate/2) 
                 result(k)=-Amplitude;
                 time(k)=t;
                 k=k+1;
                 t=t+1;
             end;
             for l=i:1/samplesize:bitrate
                 result(k)=Amplitude;
                 time(k)=t;
                 k=k+1;
                 t=t+1;
             end;
         end;
 end;
 plot(time,result,'LineWidth',3);
 title('Differential Manchester');