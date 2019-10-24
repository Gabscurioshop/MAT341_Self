function val = Algorithm_Visual()
%Golden Search Algorithm
%this function uses an interval search to find
%the minimum for f(x)
tol = 1e4;
tau = (sqrt(5)-1)/2;

%initial interval bounds
a = 0;
b = 2;
err = 0;
x1 = a +(1-tau)*(b-a);
x2 = b + tau*(b-a);
f1 = f(x1);
f2 = f(x2);
while b-a > tol
    if f1 > f2
        a = x1;
    else
        b = x2;
    end
    x1 = a +(1-tau)*(b-a);
    x2 = b + tau*(b-a);
    f1 = f(x1);
    f2 = f(x2);
end
val = (a+b)/2

function val = f(x)
val = 0.5-x*exp(-x^2);
