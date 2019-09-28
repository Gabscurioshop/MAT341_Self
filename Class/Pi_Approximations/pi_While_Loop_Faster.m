function pi_While_Loop_Faster()

tol = 1e-8;
err=1;
sum = 0;
%initialized to -1 so while loop gives N = 0
N = -1;
while err > tol
    %sum initialized to 0 so not adding previous
 
    N = N+1; %bump up partial sum order by 1
    %find pi approx
    sum = sum + 4*(-1)^(N)/(2*N+1);
    err = abs(sum - pi);
end

N