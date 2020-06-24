y1 = audioread('PJ1_do.wav');
y2 = audioread('PJ1_re.wav');
len = min(size(y1),size(y2))
z1=y1(1:len,:);
z2=y2(1:len,:);
comp = z1.+z2;
stem(abs(fft(comp)));figure
plot(comp); figure

Fc = 200;

[B,A] = butter(21,[0.3,0.6]);
y = filter(B,A,comp);

stem(abs(fft(y))); figure
plot(y);figure
freqz(B,A,100,fc);