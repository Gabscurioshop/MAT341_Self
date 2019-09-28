function Series_b(N)

sum = 0;
%input N: number of terms in series
for n = 0: N
    sum = sum + 3*(-1)^(n)*sqrt(3)^(2*n+1)/(2*n+1);
end
%store pi_approx
pi_approx = sum;
%check error
error = abs(pi_approx- pi)