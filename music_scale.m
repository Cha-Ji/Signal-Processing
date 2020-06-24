[d1,f1]=audioread('PJ1_do.wav');
[d2,f2]=audioread('PJ1_re.wav');
[d3,f3]=audioread('PJ1_mi.wav');
[d4,f4]=audioread('PJ1_fa.wav');
[d5,f5]=audioread('PJ1_sol.wav');
[d6,f6]=audioread('PJ1_la.wav');
[d7,f7]=audioread('PJ1_si.wav');

FL1 = FFT(d1(:,1),f1);
FL2 = FFT(d2(:,1),f2);
FL3 = FFT(d3(:,1),f3);
FL4 = FFT(d4(:,1),f4);
FL5 = FFT(d5(:,1),f5);
FL6 = FFT(d6(:,1),f6);
FL7 = FFT(d7(:,1),f7);

subplot(3,3,1); stem(abs(FL1)); grid;
subplot(3,3,2); stem(abs(FL2)); grid;
subplot(3,3,3); stem(abs(FL3)); grid;
subplot(3,3,4); stem(abs(FL4)); grid;
subplot(3,3,5); stem(abs(FL5)); grid;
subplot(3,3,6); stem(abs(FL6)); grid;
subplot(3,3,7); stem(abs(FL7)); grid;