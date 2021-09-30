R = [-9; 8]
p = [0.5; 1]
C = 2
[num, den] = residuez(R, p, C )

zero = roots(num')
pole = roots(den')

zplane(zero, pole)
xlabel('Real parts')
ylabel('Imaginary part')

x = linspace(-2, 2, 51)
y = linspace(-2, 2, 51)
[X Y] = meshgrid(x, y);

z = X + j*Y;

f = @(co, x) co(1) + x .* (co(2) + x .* co(3));

H = f(num, 1./z) ./ f(den, 1./z)

mesh(X, Y, abs(H) )
xlabel('Real axis');
ylabel('Imaginary axis');