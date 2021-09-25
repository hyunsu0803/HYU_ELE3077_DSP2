n = 0:10;
x = rand(1, 11);
k = -1000:1000;
w = (pi/500)*k;
X = x * (exp(-j*pi/500)) .^ (n'*k);
magX = abs(X);
angX = angle(X);

subplot(2,1,1)
plot(w, magX)
title('magnitude of X')
xlabel('w')
ylabel('|X|')

subplot(2,1,2)
plot(w, angX)
title('angle of X')
xlabel('w')
ylabel('angle(X)')

y = x;
m = n + 2;
Y = y * (exp(-j*pi/500)) .^ (m'*k);
magY = abs(Y);
angY = angle(Y);

subplot(2,1,1)
plot(w, magY)
title('magnitude of Y')
xlabel('w')
ylabel('|Y|')

subplot(2,1,2)
plot(w, angY)
title('angle of Y')
xlabel('w')
ylabel('angle(Y)')

Ycheck = X .*exp(-j*pi/500).^(2*k)
difference = abs(Y - Ycheck)
max(abs(Y - Ycheck))
