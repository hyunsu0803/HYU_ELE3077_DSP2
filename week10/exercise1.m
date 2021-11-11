lpf = [1/4 1/2 1/4];
zero = zeros(1, 20);
lpf = [lpf, zero];
L = fft(lpf);
L = fftshift(L);
magL =abs(L);

plot(magL)

t = 0:0.01:1;
x = sin(4*pi*t);
noise = randn(1, length(t));
x1 = x + 0.15*noise;
h = [1/4 1/2 1/4];

x2 = conv(x1, h);
x2(1) = [];
x2(end) = [];
plot(t, x2)

err1 = immse(x, x1)
err2 = immse(x, x2)
difference = err1 - err2

angular_freq = -pi:2*pi*0.01:pi;

X = fft(x);
X = fftshift(X);
magX = abs(X);

X1 = fft(x1);
X1 = fftshift(X1);
magX1 = abs(X1);

X2 = fft(x2);
X2 = fftshift(X2);
magX2 = abs(X2);

subplot(2,3,1);
plot(angular_freq, magX);
title('frequency of X')
xlabel('angular frequency (w)')
subplot(2,3,2);
plot(angular_freq, magX1)
title('frequency of X1')
xlabel('angular frequency (w)')
subplot(2,3,3);
plot(angular_freq, magX2)
title('frequency of X2')
xlabel('angular frequency (w)')

subplot(2,3,4);
plot(t, x);
title('original signal')
subplot(2,3,5);
plot(t, x1);
title('corrupted signal')
subplot(2,3,6);
plot(t, x2);
title('filtered signal')

Err1 = mean((x-x1).^2)
Err2 = mean((x-x2).^2)
difference = (Err1 - Err2)
