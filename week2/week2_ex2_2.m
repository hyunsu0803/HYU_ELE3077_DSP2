% Exercise 2 (c) - 1
[imp, impn] = impseq(0, -5, 5)
h_1 = [5 2 3 -5 1 11]
h_1_n = -1:4

[y, ny] = conv_m(h_1, h_1_n, imp, impn)

hold on
plot(ny, y, 'b')
plot(h_1_n, h_1)
title('identity');
xlabel('n');
legend('h_1 * imp', 'h_1')
hold off

% Exercise 2 (c) - 2
x_n = -5:5
x = [0 0 4 13 6 -3 -1 2 4 0 0]
h_2_n = -1:4
h_2 = [-4 2 0 6 3 1]

[tmp, tmpn] = conv_m(h_1, h_1_n, h_2, h_2_n);
[y1, ny] = conv_m(tmp, tmpn, x, x_n);
stem(ny, y1)
title('h_1 * h_2 * x');

[tmp, tmpn] = conv_m(h_2, h_2_n, h_1, h_1_n);
[y2, ny] = conv_m(tmp, tmpn, x, x_n)
stem(ny, y2)
title('h_2 * h_1 * x');

error = y1 - y2
stem(ny, error)
title('error');
xlabel('n');
ylabel('error');