Sr=audioread('PJ1_mi.wav');

z = Sr(1:length(Sr),:);
stem(abs(fft(z))); figure