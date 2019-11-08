function N = Newtons_1D_Opt(tol)
%This function finds the minima of f(x) = 0.5-x*e^-(x^2) on [0,2] 
%using 1-D Newton's Method
%It also returns the number of iterations needed to achieve a
%certain error tolerance

err = 1;%error
x1 = 0.25;%our initial guess
x2 = 0;%our new guess
N = 0;%number of trials

while err > tol
    x2 = x1 - (f1(x1)/f2(x1));
    err = abs(x2-x1);%calculate error value
    x1 = x2;%assign new guess to old guess
    N = N+1;%increment number of trials
end
N

%function f(x)
function val = f(x)
val = 0.5-x*exp(1)^(-x^2);

%calculate first derivative
function d1 = f1(x)
d1 = 2*(x^2)*exp(1)^(-x^2)- exp(1)^(-x^2);

%calculate second derivative
function d2 = f2(x)
d2 = 6*x*exp(1)^(-x^2)-4*(x^3)*exp(1)^(-x^2);

%a) For our initial guesses, it takes 6 iterations to achieve 1e-8
%accuracy.

%b) When x1 is changed to 1.5, it now takes 736 iterations to achieve 1e-8
%accuracy.