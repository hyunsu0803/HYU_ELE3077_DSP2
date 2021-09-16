function [x, n] = stepseq(n0, lb, ub)
    n = [lb:ub];
    x = [(n - n0) >= 0];
end