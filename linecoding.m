str=input('Enter the bit sequence: ','s');
while(1)
    check=true;
str=str-'0';
l=length(str);
for i=1:l
    if(str(i)~=1&&str(i)~=0)
      check=false;
       break;
    end
end
if(check==false)
    str=input('The bit sequence contains non-binary elements. Try again: ','s');
else
    break;
end
end
pre=.0001;
disp('Precision')
disp(pre)

A=5*str;

range=0:pre:1-pre;

x=0:pre:l-pre;

%Unipolar NRZ
y=[];

for i=1:l
    y=[y A(i)*square(pi*range)+5*str(i)];
end
 figure('Name','Unipolar NRZ');
 plot(x,y,'black')
 
 xlabel('Time')
 ylabel('Amplitude')
 
  for i=1:l
    L= line([i i],[-15 15],'LineStyle',':');
    uistack(L,'bottom')
 end
 
 L=line([0 l],[0 0],'LineStyle',':');
 uistack(L,'bottom')

ylim([-5 15])

%Polar NRZ

y=[];

for i=1:l
    y=[y A(i)*square(pi*range)+5*str(i)-5];
end
 
 figure('Name','Polar NRZ');
 plot(x,y,'black')
 
 xlabel('Time')
 ylabel('Amplitude')
 
  for i=1:l
    L= line([i i],[-15 15],'LineStyle',':');
    uistack(L,'bottom')
 end
 
 L=line([0 l],[0 0],'LineStyle',':');
 
 uistack(L,'bottom')

ylim([-15 15])

%Unipolar RZ

y=[];

for i=1:l
    y=[y A(i)*square(2*pi*range)+5*str(i)];
end
  
 figure('Name','Unipolar RZ');
 plot(x,y,'black')
 
 xlabel('Time')
 ylabel('Amplitude')
 
  for i=1:l
    L= line([i i],[-15 15],'LineStyle',':');
    uistack(L,'bottom')
 end
 
 L=line([0 l],[0 0],'LineStyle',':');
 uistack(L,'bottom')

ylim([-5 15])

%Biploar RZ

y=[];
A=2.5*str;
p=2.5;
m=1;
for i=1:l
   
    y=[y m*(A(i)*square(2*pi*range)+p*str(i))];
    
     if str(i)==1
      m=-m;
    end
end
   
 figure('Name','Bipolar RZ');
 plot(x,y,'black')
 
 for i=1:l
    L= line([i i],[-15 15],'LineStyle',':');
    uistack(L,'bottom')
 end
 
 L=line([0 l],[0 0],'LineStyle',':');
 uistack(L,'bottom')
 xlabel('Time')
 ylabel('Amplitude')
 
ylim([-15 15])

%Manchester NRZ

phase=pi-str*pi;

y=[];

for i=1:l
    y=[y 5*square(2*pi*range+phase(i))];
end
  
figure('Name','Manchester NRZ');
 plot(x,y,'black')

 for i=1:l
    L= line([i i],[-15 15],'LineStyle',':');
    uistack(L,'bottom')
 end
 
 L=line([0 l],[0 0],'LineStyle',':');
 uistack(L,'bottom')
 
 xlabel('Time')
 ylabel('Amplitude')
 
 line([0 l],[0 0])
