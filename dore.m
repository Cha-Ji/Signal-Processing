y1 = audioread('PJ1_do.wav');
y2 = audioread('PJ1_re.wav');
len = min(size(y1),size(y2))
z1=y1(1:len,:);
z2=y2(1:len,:);
comp = z1.+z2;

plot(1:len, z1); figure
plot(1:len,z2); figure
plot(comp); figure

stem(abs(fft(z1)));figure
stem(abs(fft(z2)));figure
stem(abs(fft(comp)));figure     
   
B = [1 1];
A = 1;

x = filter(B,A,comp);
stem(abs(fft(x)));