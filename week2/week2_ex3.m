% Exercise 3 (a)
n = 0:10;
x = (0.5 .^ n) .* stepseq(0, 0, 10) 

y = accumulator(x)
plot(n, y);