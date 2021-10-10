n = 0:63
x = (0.95 .^ n) .* cos(pi/20*n)

stem(n, x)

N = length(n);
k = 0:N-1;
X1 = dft(x);
magX1 = abs(X1);
angX1 = angle(X1);

subplot(2,1,1);
stem(k, magX1, 'r')
xlabel('k');
ylabel('magnitude of X1')

subplot(2,1,2);
stem(k, angX1, 'r')
xlabel('k');
ylabel('phase of X1')

n2 = 0:127
x2 = [x, zeros(1,64)]
X2 = dft(x2);
magX2 = abs(X2);
angX2 = angle(X2);

subplot(2,1,1);
stem(magX2, 'k');
xlabel('k');
ylabel('magnitude of X2')

subplot(2,1,2);
stem(angX2, 'k');
xlabel('k');
ylabel('phase of X2');


subplot(2,1,1)
y = fft(x)
stem(abs(y))
xlabel('k')
ylabel('magnitude of Y')
