function [xn, n] = idfs(Xk)
% Comupte iDFT
% xn = N-point sequence over 0 <= k <= N-1
% Xk = DFT coeff. array over 0 <= k <= N-1
% N = Length of DFT
N = length(Xk);
n = [-2*N:1:2*N-1];                     % row vector for n
k = [0:1:N-1];                     % row vector for k
WN = exp(-j*2*pi/N);               % Wn factor
nk = k'*n;                         % creates a N by N matrix of nk values
WNnk = WN.^(-nk);                  % DFT matrix
xn = (Xk*WNnk)/N;                  % row vector for DFT coefficients