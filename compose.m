do_ = audioread("PJ1_do.wav");   
re_ = audioread("PJ1_re.wav");   

Sr=5000;
ts=1/Sr;
N=500;
T=ts*N;
t=0:ts:T;

f0=100;
w0=2*pi*f0;

len = min(size(do_), size(re_));

z1 = do_(1:len,:);  z2 = re_(1:len,:);
comp = z1 + z2;       
          
plot(1:len, z1); figure     plot(1:len, z2); figure
plot(comp); figure

stem(abs(fft(z1))); figure  stem(abs(fft(z2))); figure
stem(abs(fft(comp))); figure

f = 44100   fNorm = 2500 / (f/2);         
   
[b,a] = butter(20, fNorm, 'low');  % low pass filter
freqz(b,a,128,f);