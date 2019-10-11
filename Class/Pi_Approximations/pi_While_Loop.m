<<<<<<< HEAD
function pi_While_Loop()

tol = 1e-4;
err=1;
N = -1; 
%initialized to -1 so while loop gives N = 0

while err > tol
    %sum initialized to 0 so not adding previous
    sum = 0;
    N = N+1; %bump up partial sum order by 1
    %find pi approx
    for i=0:N
        sum = sum + 4*(-1)^(i)/(2*i+1);
    end
    err = abs(sum - pi);
end

=======
function pi_While_Loop()

tol = 1e-4;
err=1;
N = -1; 
%initialized to -1 so while loop gives N = 0

while err > tol
    %sum initialized to 0 so not adding previous
    sum = 0;
    N = N+1; %bump up partial sum order by 1
    %find pi approx
    for i=0:N
        sum = sum + 4*(-1)^(i)/(2*i+1);
    end
    err = abs(sum - pi);
end

>>>>>>> 2236ab4280be55eeccfe6b147d132941bd6fb091
N