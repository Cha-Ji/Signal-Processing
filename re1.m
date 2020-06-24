Sr=5000; %sampling rate : times /sec 
ts=1/Sr; %sampling time
N=50;
T=ts*N; % Sampling Number 
t=0:ts:T;

[d1,y1] = audioread('PJ1_do.wav'); % Basic signal 
[d,y2] = audioread('PJ1_re.wav'); % Basic signal 
[d,y3] = audioread('PJ1_mi.wav'); % Basic signal



stem(y1,abs(fft(y1))); grid; 
stem(y2,abs(fft(y2))); grid; 
stem(abs(fft(y3))); grid;
 