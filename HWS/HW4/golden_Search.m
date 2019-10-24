function N = golden_Search(tol)
%this find the minimum of f(x) = 0.5-x*exp(-x^2)
%from the the interval [0,2] by using the golden search algorithm
%this also returns the number of iterations to achieve
%a certain error tolerance

%interval
a = 0;
b = 2;

%number of trials
N = 0;
%golden search algorithm
tau = (sqrt(5)-1)/2;
x1 = a + (1-tau)*(b-a);
x2 = a + tau*(b-a);
f1 = f(x1);
f2 = f(x2);
while b-a > tol
   if f1 > f2
       a = x1;
   else
       b = x2;
   end
   x1 = a + (1-tau)*(b-a);
   x2 = a + tau*(b-a);
   f1 = f(x1);
   f2 = f(x2);
   N = N+1;%increment # of trials
end
N

%function
function val = f(x)
val = 0.5-x*exp(-x^2);

%It takes 40 iterations to achieve 1e-8 accuracy