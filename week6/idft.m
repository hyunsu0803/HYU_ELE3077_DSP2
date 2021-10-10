function [xn] = idft(Xk)
% Compute iDFT
% xn = N-point sequence over 0 <= k <= N-1
% Xk = DFT coeff. array over 0 <= k <= N-1

N = length(Xk);
WN = exp(j*2*pi/N);
n = [0:1:N-1];
k = [0:1:N-1];
nk = n'*k;
WNnk = WN.^nk;
xn = Xk*WNnk/N;
end