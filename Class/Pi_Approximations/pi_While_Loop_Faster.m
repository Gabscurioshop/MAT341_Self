<<<<<<< HEAD
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

=======
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

>>>>>>> 2236ab4280be55eeccfe6b147d132941bd6fb091
N