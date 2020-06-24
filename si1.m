Sr=audioread('PJ1_si.wav');

z = Sr(1:length(Sr),:);
stem(abs(fft(z))); figure