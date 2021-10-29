function [y, count] = my_fft(x)
    count = 0;
    WN = exp(-2*pi*j/length(x));
    
    if length(x) == 2
        W = zeros(2,2);
        for k = 1:2
           for i = 1:2
              W(k,i) = exp(-2*pi*j*(k-1)*(i-1)/2); 
           end
        end
        y = W*x;
        count = length(x);
    else
        Xe = x(1:2:end);
        Xo = x(2:2:end);
        [ye, ce] = my_fft(Xe);
        [yo, co] = my_fft(Xo);
        
        Y = zeros(size(x));
        ye2 = [ye;ye];
        yo2 = [yo;yo];
        
        for i = 1:length(x)
           Y(i) = ye2(i) + WN^(i-1)*yo2(i); 
        end
       
        y = Y;
        count = ce + co + length(x);
    end
end
