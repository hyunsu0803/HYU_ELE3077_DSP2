n = 0:63;
x = ((0.95).^n).*cos((pi/20)*n);

M1 = 100;
M2 = 40;

k1 = [0:M1-1];
k2 = [0:M2-1];

DT_samp = @(x, k, n) x*exp(-j*2*pi/length(k)).^(n'*k);

X1 = DT_samp(x, k1, n);
X2 = DT_samp(x, k2, n);

x1 = idft(X1)
x2 = idft(X2)

subplot(3,1,1);
stem(n, real(x));
ylabel("x");
xlim([0 80]);
subplot(3,1,2);
stem(k1, real(x1));
ylabel("x1 (M=100)");
xlim([0 80]);
subplot(3,1,3);
stem(k2, real(x2));
ylabel("x2 (M=40)");
xlim([0 80]);

x1_ = idfs(X1)
x2_ = idfs(X2)

subplot(3,1,1);
plot(n, x);
ylabel("x");
xlim([0 63]);
subplot(3,1,2);
plot(real(x1_));
ylabel("x1 (M=100)");
xlim([0 63]);
subplot(3,1,3);
plot(real(x2_));
ylabel("x2 (M=40)");
xlim([0 63]);
