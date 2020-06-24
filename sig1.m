

Sr = 1000; %sampling rate : times / sec
ts = 1/Sr; %sampling time
N  = 50;   %sampling Num
T = ts*(N-1); % Sampling duration
t1 = 0:ts:T;
t2 = 0:ts/2:T;
t0 = 0:ts*2:T;

f0 = 100;  %signal frequency
w0 = 2*pi*f0; %signal angular freq

y1 = sin(w0*t1); % Basic signal
y2 = sin(w0*t2); % Basic signal
y0 = sin(w0*t0); % Basic signal

subplot(4,1,1); plot(t2,y2); grid
subplot(4,1,2); stem(t0,y0); grid
subplot(4,1,3); stem(t1,y1); grid
subplot(4,1,4); stem(t2,y2); grid




