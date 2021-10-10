%%% 2st order : resonator (r = 0.95) %%%
sgtitle('2st order : resonator (r = 0.95)')

N = 512;
r = 0.95;

w0  = pi/6;
z = exp(j*w0);
G1 = 1 -2*r*cos(w0)/z + (r*r)/(z*z);
num = [1];
den = [1, -2*r*cos(w0), r*r];
[H1, w ] = freqz(num, den, N); % frequency response
H1 = H1 * G1;
subplot(2,2,1);
zplane(num, den); % pole-zero diagram
xlabel('Real');
ylabel('Imaginary');
title('pz diagram of w = \pi/6');

w0  = pi/3;
z = exp(j*w0);
G2 = 1 -2*r*cos(w0)/z + (r*r)/(z*z);
num = [1];
den = [1, -2*r*cos(w0), r*r];
[H2, w ] = freqz(num, den, N); % frequency response
H2 = H2 * G2;
subplot(2,2,2);
zplane(num, den); % pole-zero diagram
xlabel('Real');
ylabel('Imaginary');
title('pz diagram of w = \pi/3');

magH1 = 20*log10(abs(H1));
magH2 = 20*log10(abs(H2));
subplot(2,2,3);
plot(w/pi, magH1, w/pi, magH2);
xlabel('frequency in \pi unit');
ylabel('magnitude (dB)');
legend('w = \pi/6', 'w = \pi/3', 'Location',"best");

angH1 = angle(H1);
angH2 = angle(H2);
subplot(2,2,4);
plot(w/pi, angH1, w/pi, angH2);
xlabel('frequency in \pi unit');
ylabel('phase (rad)');

