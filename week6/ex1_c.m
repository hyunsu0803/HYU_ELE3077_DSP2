x = zeros(8,1);
x(1:4) = 1;
x = x'

y = idft(dft(x))
abs(x-y)
