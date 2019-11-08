function N = Newtons_2D_Opt(tol)
%this script calculates the minimum of -(sin(x)+cos(y))
%using multivariable newton's method
%this also returns the number of trials needed to
%reach a specific error tolerance

N = 0;%number of trials
err = 1;

x1 = [-4.5;4.5];%our initial x1 vector

while err > tol
    
grad = [-cos(x1(1));sin(x1(2))];%gradient vector
hess = [sin(x1(1)) 0; 0 cos(x1(2))];%hessian matrix
inv_hess = [csc(x1(1)) 0; 0 sec(x1(2))];%inverse hessian matrix
newVec = x1 - inv_hess*grad;%get new vector

err = sqrt(transpose(newVec-x1)*(newVec-x1));%error value

x1 = newVec;%save new vector to old vector
N = N+1;%increment number of trials
end
x1
N
%a) With the initial guess, it takes 5 iterations to achieve 1e-8 accuracy. 
%It found a minima of (-4.7124,0).

%b)With the new guess, the minima is (-4.7124,0). Now, it takes 4
%iterations to achieve 1e-8 accuracy.
