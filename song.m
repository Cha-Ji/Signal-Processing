y1 = audioread('man.wav');
y2 = audioread('noise.wav');
len = min(size(y1),size(y2))
z1=y1(1:len,:);
z2=y2(1:len,:);
comp = z1.+z2;

plot(y1);figure
stem(abs(fft(y2)));figure
stem(abs(fft(comp)));figure
plot(comp); figure


[b,a] = butter(2,[0.1,0.4]);
freqz(b,a);

y = filter(b,a,comp);
plot(y);figure


y3 = audioread('woman.wav');
y4 = audioread('noise.wav');
len = min(size(y3),size(y4))
z3=y3(1:len,:);
z4=y4(1:len,:);
comp2 = z3.+z4;

plot(y3);figure
stem(abs(fft(comp2)));figure
plot(comp2); figure

y = filter(b,a,comp2);
plot(y);figure