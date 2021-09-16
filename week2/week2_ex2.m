% Exercise 2 (b) - 1
n = -10:10
x_1 = stepseq(0, -10, 10)
y_1 = (0.8.^n) .* x_1
plot(n, y_1, 'g')

% Exercise 2 (b) - 2
hold on
x_2 = stepseq(4, -10, 10)
y_2 = 0.8.^(n-4) .* x_2
plot(n, y_2, 'b')

% Exercise 2 (b) - 3
x_3 = stepseq(4, -10, 10)
y_3 = 0.8.^(n) .* x_3
plot(n, y_3, 'r')
hold off