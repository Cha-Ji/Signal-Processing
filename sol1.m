Sr=audioread('PJ1_sol.wav');

z = Sr(1:length(Sr),:);
stem(abs(fft(z))); figure