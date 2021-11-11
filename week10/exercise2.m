[y, Fs] = audioread("dsp2_experiment10.wav")

lpf = [1/4 1/2 1/4];
pad = zeros(1, 30);
lpf = [lpf, pad];
LPF = fft(lpf);
LPF = fftshift(LPF);
magLPF = abs(LPF);
plot(magLPF)
title('low-pass filter')

hpf = [1/2 -1/2]
hpf = [hpf, pad];
HPF= fft(hpf);
HPF = fftshift(HPF);
magHPF= abs(HPF);
plot(magHPF)
title('high-pass filter')

y_lpf = conv(y, lpf);
y_hpf = conv(y, hpf);

sound(y, Fs)
%sound(y_lpf, Fs)
%sound(y_hpf, Fs)

Y = fft(y);
Y = fftshift(Y);
Y_lpf = fft(y_lpf);
Y_lpf = fftshift(Y_lpf);
Y_hpf = fft(y_hpf);
Y_hpf = fftshift(Y_hpf);

angular_freq = -pi:2*pi/(length(y)-1):pi;
subplot(3,1,1);
plot(angular_freq, abs(Y));
title('original signal')

angular_freq = -pi:2*pi/(length(y_lpf)-1):pi;
subplot(3,1,2);
plot(angular_freq, abs(Y_lpf));
title('low-pass filtered')

angular_freq = -pi:2*pi/(length(y_hpf)-1):pi;
subplot(3,1,3);
plot(angular_freq, abs(Y_hpf));
title('high-pass filtered')
