clear; figure;
f0=10; %freq 10Hz
Sr = 100; % sampling rate
Ts = 1/Sr; % sampling time
t=0:Ts:1-Ts;
n = length(t);
y = 2*sin(2*pi*f0*t);

subplot(3,1,1); plot(t,y); grid on

A = fft(y);
subplot(3,1,2); stem(abs(A)); grid
B = ifft(A);
subplot(3,1,3); plot(t,B); grid