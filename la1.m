Sr=audioread('PJ1_la.wav');

z = Sr(1:length(Sr),:);
stem(abs(fft(z))); figure