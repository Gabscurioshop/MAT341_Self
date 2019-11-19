function N= Gradient_Descent_1(tol,gamma)
%this script calculates the minimum of -(sin(x)+cos(y))
%using the gradient descent method: x_n+1 = xn+gamma*grad(xn)
%It returns the number fo iterations needed to achieve
%a specific error tolerance and step size

N = 0; %number of trials
x1 = [1.0;1.5];%initial guess
err = 1;%error

while err> tol
    grad = [-cos(x1(1));sin(x1(2))];%gradient vector
    %gradient f(x,y) = [-cos(x);sin(y)]
    xNew = x1-gamma*grad;%solve for new vector
    err = sqrt(transpose(xNew-x1)*(xNew-x1));
    x1 = xNew; %reassign new guess to old guess
    N = N+1;%increment number of trials
end
N
%a) Using gamma = 0.5, it takes 35 iterations to achieve 1e-10 accuracy.
%b) Using gamma = 0.9, it takes 12 iterations to achieve 1e-10 accuracy.
%c) Using gamma = 1.5, it takes 34 iterations to achieve 1e-10 accuracy.
