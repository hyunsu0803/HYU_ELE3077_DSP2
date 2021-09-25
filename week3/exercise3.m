f0 = 5; 

t = -0.5:0.001:0.5;
y = cos(2*pi*f0*t); % original signal

%%% sampling by 8 Hz %%%
f1 = 8;
t1 = -0.5:1/f1:0.5;

yn_1 = cos(2*pi*f0*t1);
yr_1 = zeros(1, length(t));

for i = 1:length(t1)
    yr_1 = yr_1 + yn_1(i)*sinc(t*f1 - i);
end

%%% sampling by 12 Hz %%%
f2 = 12;
t2 = -0.5:1/f2:0.5;

yn_2 = cos(2*pi*f0*t2);
yr_2 = zeros(1, length(t));

for i = 1:length(t2)
    yr_2 = yr_2 + yn_2(i)*sinc((t - i/f2)*f2);
end


subplot(3, 2, [1,2])
plot(t, y)
title('Original Signal')

subplot(3, 2, 3)
stem(t1, yn_1)
title('8Hz Sampling')

subplot(3, 2, 4)
plot(t, yr_1)
title('8Hz Reconstruction')

subplot(3,2,5)
stem(t2, yn_2)
title('12Hz Sampling')

subplot(3, 2, 6)
plot(t, yr_2)
title('12Hz Reconstruction')
