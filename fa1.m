Sr=audioread('PJ1_fa.wav');

z = Sr(1:length(Sr),:);
stem(abs(fft(z))); figure