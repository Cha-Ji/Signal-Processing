Sr=5000; %sampling rate : times /sec 
ts=1/Sr; %sampling time
N=50;
T=ts*N; % Sampling Number 
t=0:ts:T;

f0=100; % signal frequency 
w0=2*pi*f0; % signal angular freq.

y1 = sin(w0*t); % Basic signal 
y2 = sin(w0*2*t); % Basic signal 
y3 = sin(w0*3*t); % Basic signal

yt1 = y1;
yt2 = y1+y2/2;
yt3 = y1+y2/2+y3/3;

subplot(3,2,1); plot(t, yt1); grid; subplot(3,2,2); stem(abs(fft(yt1))); grid; 
subplot(3,2,3); plot(t, yt2); grid; subplot(3,2,4); stem(abs(fft(yt2))); grid; 
subplot(3,2,5); plot(t, yt3); grid; subplot(3,2,6); stem(abs(fft(yt3))); grid;
 