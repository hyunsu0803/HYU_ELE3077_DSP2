v = (0:1:500) * pi/500 % axis divided into 501 points
X = exp(j*v) ./ (exp(j*v) - 0.5)

subplot(2,2,1);
plot(v, abs(X));
title('Magnitude Part');
xlabel('Angular Frequency (w)');
ylabel('Magnitude');

subplot(2,2,2)
plot(v, angle(X))
title('Angle Part');
xlabel('Angular Frequency (w)');
ylabel('Radians');

subplot(2,2,3)
plot(v, real(X))
title('Real Part');
xlabel('Angular Frequency (w)');
ylabel('Real');

subplot(2,2,4)
plot(v, imag(X))
title('Imaginary Part');
xlabel('Angular Frequency (w)');
ylabel('Imaginary');
