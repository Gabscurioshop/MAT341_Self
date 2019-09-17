function series_Compare()

%error tolerance
tol = 1e-2;
%initialize err =1 to get while loop
err = 1;
%initialize coubter to zero
n = 0;

while err > tol
    
    n = n + 1;
    
    %compute sum for a_{n-1}
    sumA = 0;
    for j = 1:(n-1)^2
        sumA = sumA + (n-1)/((n-1)^2 + j^2);
    end
    %compute sum for a_{n}
    sumB = 0;
    for j = 1:n^2
        sumB = sumB + n/(n^2 + j^2);
    end
    %compare a_{n} to a_{n-1}
    err = abs(sumA-sumB)
end

N = n