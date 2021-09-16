% exercise 1 (b) - 1
x_1 = 2 * impseq(-2, -5, 5) - impseq(4, -5, 5)
stem(x_1)
title('exercise 1 (b) - 1');
xlabel('n');
ylabel('x_1(n)');

% exercise 1 (b) - 2
n = 0:20;
x_2 = (n .* (stepseq(0, 0, 20) - stepseq(10, 0, 20))) + 10 * exp(-0.3 .* (n - 10)) .* (stepseq(10, 0, 20) - stepseq(20, 0, 20));
stem(n, x_2)
title('exercise 1 (b) - 2');
xlabel('n');
ylabel('x_2(n)');