function variant_Brocard(k,n,m)
%this searches for a solution for a variant of Brocard's Problem
%n! + n^k = m^2
for k = 0: 10
    for n = 1: 15
       eqn = factorial(n) + (n^k);
        for m = 1: 1e8
            if eqn == m^2
                k
                n
                m
            end 
        end
    end
end