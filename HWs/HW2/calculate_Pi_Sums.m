function calculate_Pi_Sums()
%this function calculates the sums of two sequences 
%until the following condition is met:
%|a_{n}-PI|< tol and |b_{n}-PI|< tol

%error tolerance
tol = 1e-6;
%initialize err =1 to get while loop
err = 1;
%initialize coubter to zero
n = 0;

while err > tol
    n = n+1;
    %compute sum for a_{n}
    sumA = 0;
    for k =0:n
        sumA = sumA + 6/sqrt(3) *(-1)^k/[(3^k)*(2*k+1)];
    end
    %compare a{n} to tol
   err = abs(sumA - pi);
end
n

n = 0; %clear n 
err = 1; %reset err back to 0 to handle summation of b
b1_sum = 0; %part 1 of summation formula for b
b2_sum = 0; %part 2 of summation formula for b

while err >tol
    n = n+1;
    %compute sum for b{n}
    sumB= 0;
    %reset partial sums
    b1_sum = 0;
    b2_sum = 0;
    for k = 0:n
        b1_sum = b1_sum + 16*(-1)^k/( 5^(2*k+1)*(2*k+1) );
        b2_sum = b2_sum + 4*(-1)^k/(239^(2*k+1)*(2*k+1) );
        sumB = b1_sum - b2_sum;
    end
 %sumB = b1_sum - b2_sum
    err = abs(sumB - pi);
    %compare b{n} to tol
end
n


