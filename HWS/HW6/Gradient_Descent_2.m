function N = Gradient_Descent_2(tol)
%this script calculates the minimum of -(sin(x)+cos(y))
%using the gradient descent method: x_n+1 = xn+gamma*grad(xn)
%It returns the number fo iterations needed to achieve at
%a specific error tolerance
%This time, we're using the Barzilai-Borwein step-size to calculate
%gamma
N = 0; %number of trials
x1 = [1.0;1.5];%initial guess
err = 1;%error
gamma = 0.5;%initial gamma

while err> tol
    grad = [-cos(x1(1));sin(x1(2))];%gradient vector of current guess
    %gradient f(x,y) = [-cos(x);sin(y)]
    xNew = x1-gamma*grad;%solve for new vector
    new_grad = [-cos(xNew(1));sin(xNew(2))];%gradient vector of new guess
    gamma = (transpose(xNew-x1)*(new_grad-grad))/(sqrt(transpose(new_grad-grad)*(new_grad-grad))^2);
    err = sqrt(transpose(xNew-x1)*(xNew-x1));
    x1 = xNew; %reassign new guess to old guess
    N = N+1;%increment number of trials
end
N
%a)Using the Barzilai-Borwein step-size, it takes 6 iterations to 
%achieve 1e-6 accuracy.
%b)Using the Barzilai-Borwein step-size, it takes 7 iterations to 
%achieve 1e-10 accuracy.
