[d1,f1]=audioread('PJ1_do.wav');
[d1,f1]=audioread('PJ1_do.wav');
[d1,f1]=audioread('PJ1_do.wav');
[d1,f1]=audioread('PJ1_do.wav');
[d1,f1]=audioread('PJ1_do.wav');
[d1,f1]=audioread('PJ1_do.wav');
[d1,f1]=audioread('PJ1_do.wav');

FL1 = FFT(d1(:,1),f1);






stem(abs(FL1))