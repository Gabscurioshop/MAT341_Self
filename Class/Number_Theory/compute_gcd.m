<<<<<<< HEAD
function val = compute_gcd(x,y)

%Find divisors of X,Y
xDivVec = compute_Divisors(x);
yDivVec = compute_Divisors(y);
%initiate gcd value to 1
 val = 1;
 %iterate all divisors of x
for i =1:length(xDivVec)
    %x divisors to compare all y vectors
    xTestDivisor = xDivVec(i);
    %iterate over ALL divisors of y
    for j =1: length(yDivVec)
        %y's divisors to compare to X divisors
        yTestDivisor = yDivVec(j);
        if xTestDivisor == yTestDivisor
            val = xTestDivisor;
        end
    end
=======
function val = compute_gcd(x,y)

%Find divisors of X,Y
xDivVec = compute_Divisors(x);
yDivVec = compute_Divisors(y);
%initiate gcd value to 1
 val = 1;
 %iterate all divisors of x
for i =1:length(xDivVec)
    %x divisors to compare all y vectors
    xTestDivisor = xDivVec(i);
    %iterate over ALL divisors of y
    for j =1: length(yDivVec)
        %y's divisors to compare to X divisors
        yTestDivisor = yDivVec(j);
        if xTestDivisor == yTestDivisor
            val = xTestDivisor;
        end
    end
>>>>>>> 2236ab4280be55eeccfe6b147d132941bd6fb091
end