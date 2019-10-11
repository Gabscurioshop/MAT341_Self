function Brocard(n,m)
%this finds all the (n,m) pairs that satisfy
%Brocard's equation: n!+1 = (m)^2
%where n,m are positive integers

for n = 1: 15
   eqn = factorial(n) + 1;
    for m = 1: 1e8
        if eqn == m^2
            n
            m
        end
    end
end
