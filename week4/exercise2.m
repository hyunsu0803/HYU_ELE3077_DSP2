num = [1 1/3];
den = [1 -1.85*cos(pi/18) 0.83];
N = 512;

[h w ] = freqz(num, den, N)

mag_h = abs(h)
mag_h = 20 * log10(mag_h);
ang_h = angle(h)

subplot(2,1,1);
plot(w/pi, mag_h)
xlabel('frequency in \pi unit');
ylabel('Magnitude (dB)');
grid on

subplot(2,1,2);
plot(w/pi, ang_h*180/pi);
xlabel('frequency in \pi unit');
ylabel('Phase (degree)');
grid off