%% ²ÉÑù
clc,clear all;
cnt=0;
save 'cnt.mat' cnt;
t=0:0.002:1;
st=f(t);
%plot(t,st);
for k=1:1:120
    fs=k;
    T=1/fs;
    nT=0:T:1;
    n=length(nT);
    x=zeros(n);
    for i=1:n
        x(i)=f(nT(i));
    end
    m=length(t);
    xa=zeros(1,m);
    for i=1:m
        for j=1:n
            xa(i)=xa(i)+x(j)*sin(pi*(t(i)-nT(j))/T)/(pi*(t(i)-nT(j))/T);
        end
    end
    
    draw(t,xa,st,fs);
end

function y=f(t)

y=+cos(2*pi*3*t)/5+cos(2*pi*30*t)/30+cos(2*pi*50*t)/50;

end