function Series_a(N)

%input N: number of terms in series
sum = 0;

for n = 0: N
    sum = sum + 4*(-1)^(n)/(2*n+1);
end
%store pi_approx
pi_approx = sum;

%check error
error = abs(pi_approx- pi)