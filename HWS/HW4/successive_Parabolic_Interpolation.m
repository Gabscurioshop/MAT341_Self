function N = successive_Parabolic_Interpolation(tol)
%this find the minimum of f(x) = 0.5-x*exp(-x^2)
%from the the interval [0,2] by using successive
%parabolic interpolation
%this also returns the number of iterations to achieve
%a certain error tolerance

% number of trials
N = 0;
%3 points within our interval
x1 = 0;
x2 = 0.6;
x3 = 2;
%solve for the y coordinates
f1 = f(x1);
f2 = f(x2);
f3 = f(x3);
%coefficient matrix based on the linear system of eqns
%f1 = a(x1^2) +bx1+c
%f2 = a(x2^2) +bx2+c
%f3 = a(x3^2) +bx3+c
A = [ x1^2 x1  1;
     x2^2 x2 1;
      x3^2 x3  1];
%vector w/ right side of equation
B = [f1; f2; f3];
X = linsolve(A,B);%vector containing values of a,b,c
%coefficients for parabola
a = X(1);
b = X(2);
c = X(3);
%find the vertex of parabola
xMin = (b*-1)/(2*a);
%redefine point values
x3 = x2;
x2 = x1; 
x1 = xMin;

while abs(x3-x1) > tol
    f1 = f(x1);
    f2 = f(x2);
    f3 = f(x3);
    A = [ x1^2 x1  1;
     x2^2 x2 1;
      x3^2 x3  1];
    B = [f1; f2; f3];
    X = linsolve(A,B);%vector containing values of a,b,c
    a = X(1);
    b = X(2);
    c = X(3);
    xMin = (b*-1)/(2*a);
    x3 = x2;
    x2 = x1; 
    x1 = xMin;
    N = N+1;%increment number of trials
end
N
%function
function val = f(x)
val = 0.5-x*exp(-x^2);
%It takes 6 iterations to achieve 1e-8 accuracy
%After changing x3 from 0.9 to 2, the number of trials increased by 4. 
%MATLAB issues this following warning: Matrix is close to 
%singular or badly scaled. Results may be inaccurate.
%This means that the coefficients in the linear system are getting closer
% to zero.