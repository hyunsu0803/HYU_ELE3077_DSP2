%%% 1st order low-pass filter (a=0.9) %%%
sgtitle('1st order low-pass filter (a=0.9)')

N = 512;
a = 0.9;
b = [0, -1];

num = [1, -b(1)];
den = [1, -a];
G1 = (1-a/exp(j*0)) / (1-b(1)/exp(j*0));
[H1, w ] = freqz(num, den, N); % frequency response
H1 = H1 * G1;
subplot(2,2,1);
zplane(num, den); % pole-zero diagram
xlabel('Real');
ylabel('Imaginary');
title('pz diagram of b = 0');

num = [1, -b(2)];
den = [1, -a];
G2 = (1-a/exp(j*0)) / (1-b(2)/exp(j*0));
[H2, w ] = freqz(num, den, N); % frequency response
H2 = H2 * 0.5 * (1 - a);
subplot(2,2,2);
zplane(num, den); % pole-zero diagram
xlabel('Real');
ylabel('Imaginary');
title('pz diagram of b = -1');

magH1 = 20*log10(abs(H1));
magH2 = 20*log10(abs(H2));
subplot(2,2,3);
plot(w/pi, magH1, w/pi, magH2);
xlabel('frequency in \pi unit');
ylabel('magnitude (dB)');
legend('b = 0', 'b = -1', 'Location',"best");

angH1 = angle(H1);
angH2 = angle(H2);
subplot(2,2,4);
plot(w/pi, angH1, w/pi, angH2);
xlabel('frequency in \pi unit');
ylabel('phase (rad)');

