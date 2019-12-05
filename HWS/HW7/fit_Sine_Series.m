function fit_Sine_Series()
%this function performs linear least squares to find the best fit for a
% sine function
N=500;
xData=linspace(-pi,pi,N);
yData=( (0.25*xData.^2).*cos(xData).^4.*sin(xData).^7)';
M = 40; %number of rows in A matrix
for i=1:N
    %form Nx1 matrix A
     x = xData(i);%get x values from vector
     for j = 1:M
        A(i,j) = sin(j*x);
     end
     %form y vector
     y(i,1) = yData(i);%get y values from vector   
end
%pseudo inverse
B = inv(transpose(A)*A)*transpose(A)*y;
res = y - A*B;%residual
norm = sqrt(transpose(res)*(res))%norm of residual
yfit = A*B;
%plot data
semilogx(xData,yfit,'r-');%plots points in red
set(0, 'DefaultLineLineWidth', 4);% sets the line width of graph
hold on; %this plots all the points calculated by the function
semilogx(xData,yData,'bo');%plots points in blue
set(0, 'DefaultLineLineWidth', 6);% sets the line width of graph
legend('Best Sine Series Fit','Data');
hold on;
xlabel('xData');
ylabel('yData');
%a) At M = 5, the residual norm is 0.0813
%At M = 10, the residual norm is  0.0096.
%At M = 20, the residual norm is 2.1412e-06.
%At M = 40, the residual norm is 3.9199e-09.
%Increasing the number of terms in the sine series decreases the residual 
%norm.
%b) This series is called Fourier Sine Series.