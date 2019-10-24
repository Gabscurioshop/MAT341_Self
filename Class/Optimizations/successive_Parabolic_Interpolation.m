function val = successive_Parabolic_Interpolation(tol)
%this function creates a parabola that contains the minimum
%of function f(x)
%tol = 0.1;
% number of trials
N = 0;
%3 points within our interval
x1 = 0;
x2 = 0.5;
x3 = 1.2;
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
end
xMin
%function
function val = f(x)
val = 0.5-x*exp(-x^2);