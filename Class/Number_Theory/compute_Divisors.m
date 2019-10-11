<<<<<<< HEAD
function div_Vec = compute_Divisors(N)

%# of divisors so far
ct = 0;

for i=1 : N
    %test if number divides evenly
    if mod(N,i)== 0
        %increment flag
        ct = ct+1;
        %add divisor into vector
        div_Vec(ct) = i;
    end
end
=======
function div_Vec = compute_Divisors(N)

%# of divisors so far
ct = 0;

for i=1 : N
    %test if number divides evenly
    if mod(N,i)== 0
        %increment flag
        ct = ct+1;
        %add divisor into vector
        div_Vec(ct) = i;
    end
end
>>>>>>> 2236ab4280be55eeccfe6b147d132941bd6fb091
div_Vec