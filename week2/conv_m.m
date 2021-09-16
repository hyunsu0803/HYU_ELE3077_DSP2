function [y, ny] = conv_m(x, nx, h, nh)
ny_start = nx(1) + nh(1);
ny_end = nx(length(x)) + nh(length(h));
ny = ny_start:ny_end;
y = conv(x, h);
end