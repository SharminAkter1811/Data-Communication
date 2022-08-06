clc;
close all;
clear all;
warning off;

f1=2;
f2=8;
pi=3.14;
ps=pi;
n=[1,0,1,1,0,0,1];

i=1:length(n);

   for t=i:.01:i+1    
if n(i)==1
    ask=sin(2*pi*f1*t);
     fsk=sin(2*pi*f1*t);
      psk=sin(2*pi*f1*t);         

      
     
elseif n(i)==0
    ask=0;
     fsk=sin(2*pi*f2*t);
      psk=sin(2*pi*f1*t+ps);
     

    
end

end

figure('Name','Ask');
plot(t,ask,'k');
axis([0 length(n) -10 10]);

title('ASK waveform');
xlabel('Time');
ylabel('ASK');
    

