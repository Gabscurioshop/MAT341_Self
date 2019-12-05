function fit_Polynomial_Series()
%this function performs linear least squares to find the best fit polynomial
%of degree 12 through data {(xi,yi)} from i = 1 to N

N=250;%number of data points
xData=linspace(-2*pi,2*pi,N);
yData=cos(xData)';% apostrophe will make it a column vector

for i=1:N
    %form Nx12 matrix A
     x = xData(i);%get x values from vector
     A(i,1) = 1;
     A(i,2) = x;
     A(i,3) = x^2;
     A(i,4) = x^3;
     A(i,5) = x^4;
     A(i,6) = x^5;
     A(i,7) = x^6;
     A(i,8) = x^7;
     A(i,9) = x^8;
     A(i,10) = x^9;
     A(i,11) = x^10;
     A(i,12) = x^11;
     A(i,13) = x^12;
     %form y vector
     y(i,1) = yData(i);%get y values from vector   
end
%pseudo inverse
B = inv(transpose(A)*A)*transpose(A)*y;
res = y - A*B%residual
norm = sqrt(transpose(res)*(res))%norm of residual
yfit = A*B;%line of best fit
%plot data
semilogx(xData,yfit,'r-');%plots points in red
set(0, 'DefaultLineLineWidth', 4);% sets the line width of graph
hold on; %this plots all the points calculated by the function
semilogx(xData,yData,'bo');%plots points in blue
set(0, 'DefaultLineLineWidth', 6);% sets the line width of graph
hold on;
legend('Best Poly Fit','Data');
xlabel('xData');
ylabel('yData'); 
%a)Increasing N to a certain value seems to increase, then decrease the
%residual.
%Residual norm at N = 10: 0.7318
%Residual norm at N = 50: 5.1501e-04
%Residual norm at N = 250: 0.0011
%b) cos(x) was commonly used as a Taylor series function. It coefficients
%are 1- x^2/2!+x^4/4!-....(-1)^n(x^2n/(2n)!)
%c) The coefficients at N = 250 are 0.9999 0.0000 -0.4998 -0.0000 0.0416 0.0000   
%-0.0014  -0.0000  0.0000  0.0000  -0.0000  -0.0000 0.0000.
%d) The majority of the coefficients for N =250 appear to be 0.


