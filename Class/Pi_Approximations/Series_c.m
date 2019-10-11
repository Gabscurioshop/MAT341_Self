<<<<<<< HEAD
function Series_c(N)

sum = 0;
%input N: number of terms in series
for n = 0: N
    sum = sum + 6*(-1)^(n)*[(1/sqrt(3))^(2*n+1)]/(2*n+1);
end
%store pi_approx
pi_approx = sum;
%check error
=======
function Series_c(N)

sum = 0;
%input N: number of terms in series
for n = 0: N
    sum = sum + 6*(-1)^(n)*[(1/sqrt(3))^(2*n+1)]/(2*n+1);
end
%store pi_approx
pi_approx = sum;
%check error
>>>>>>> 2236ab4280be55eeccfe6b147d132941bd6fb091
error = abs(pi_approx- pi)