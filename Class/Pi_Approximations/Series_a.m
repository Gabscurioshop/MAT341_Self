<<<<<<< HEAD
function Series_a(N)

%input N: number of terms in series
sum = 0;

for n = 0: N
    sum = sum + 4*(-1)^(n)/(2*n+1);
end
%store pi_approx
pi_approx = sum;

%check error
=======
function Series_a(N)

%input N: number of terms in series
sum = 0;

for n = 0: N
    sum = sum + 4*(-1)^(n)/(2*n+1);
end
%store pi_approx
pi_approx = sum;

%check error
>>>>>>> 2236ab4280be55eeccfe6b147d132941bd6fb091
error = abs(pi_approx- pi)