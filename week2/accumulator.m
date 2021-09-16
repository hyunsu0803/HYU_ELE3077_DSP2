function y = accumulator(x)
    y = 1:length(x);
    for i = 1:length(x)
        if i == 1
           y(i) = x(i); 
        else
           y(i) = y(i-1) + x(i); 
        end
    end
end