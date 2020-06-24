 
Sr=5000; %sampling rate : times /sec ts=1/Sr; %sampling time
N=50;
T=ts*N; % Sampling Number 
t=0:ts:T;

f0=100; % signal frequency 
w0=2*pi*f0; % signal angular freq.

y1 = sin(w0*t); % Basic signal
y2 = sin(w0*2*t); 
y3 = sin(w0*3*t); 
y4 = sin(w0*4*t);  
y5 = sin(w0*5*t); 
y6 = sin(w0*6*t); 
y7 = sin(w0*7*t); 

yt1 = y1;
yt2 = y1+y3/3;
yt3 = y1+y3/3+y5/5;
yt4 = y1+y3/3+y5/5+y7/7;

subplot(4,1,1); plot(t, yt1); 
subplot(4,1,2); plot(t, yt2); 
subplot(4,1,3); plot(t, yt3); 
subplot(4,1,4); plot(t, yt4);
