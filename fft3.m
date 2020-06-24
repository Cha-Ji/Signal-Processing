Sr=5000;
ts=1/Sr;
N=500;
T=ts*N;
t=0:ts:T;

f0=100;
w0=2*pi*f0;

y1=sin(w0*t);
y2=sin(w0*2*t);
y3=sin(w0*3*t);

yt1=y1;
yt2=y1+y2/2;
yt3=y1+y2/2+y3/3;

[f1,X1]=FFT(yt1,Sr);
[f2,X2]=FFT(yt2,Sr);
[f3,X3]=FFT(yt3,Sr);

subplot(3,2,1);plot(t,yt1);grid;subplot(3,2,2);stem(f1,abs(X1));grid;
subplot(3,2,3);plot(t,yt2);grid;subplot(3,2,4);stem(f2,abs(X2));grid;
subplot(3,2,5);plot(t,yt3);grid;subplot(3,2,6);stem(f3,abs(X3));grid;