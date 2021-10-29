% Exercise 1 - c
a = ones(64,1);
[y, count] = my_fft(a)
num_of_mult_in_DFT = 64 * (log(64)/log(2))

% Exercise 2
n = (0:511)'
x = cos(pi/20.*n) + 3*cos(pi/12.*n)

X1 = my_fft(x)
X2 = fft(x)

magX1 = abs(X1);
magX2 = abs(X2);
angX1 = angle(X1);
angX2 = angle(X2);

subplot(2,2,1);
plot(n, magX1);
xlabel('k-index');
ylabel('Magnitude of X1');

subplot(2,2,2);
plot(n, magX2);
xlabel('k-index');
ylabel('Magnitude of X2');

subplot(2,2,3);
plot(n, angX1);
xlabel('k-index');
ylabel('Angle of X1');

subplot(2,2,4);
plot(n, angX2);
xlabel('k-index');
ylabel('Angle of X2');
