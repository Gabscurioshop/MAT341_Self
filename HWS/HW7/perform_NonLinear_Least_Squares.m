function perform_NonLinear_Least_Squares()
%this function performs non-linear least squares to find a best
%fit function
N = 2500; %number of data points
tol = 1e-5; %error tolerance
B = [1 0.5 0.3]'; %initial guess, beta vector
err = 1; %initial error

M = give_NonLinear_Least_Squares_Data(N)%data matrix
while err >tol
   for i = 1:N
        %form J matrix
       x = M(i,1);%get x values from first column of matrix
       expy = exp(-(x-B(2))^2)/(2*B(3)^2);
       J(i,1) = expy;
       J(i,2) = B(1) *((x-B(2))/B(3)^2)*expy;
       J(i,3) = B(1)*((x-B(2))^2/B(3)^3)*expy;
       %form yk
       y = M(i,2);%get y values from second column of matrix
       m = B(1)*exp(1)^(-(x-B(2))^2/(2*B(3)^2));
       yk(i,1) = y - m;
   end
   %pseudo inverse
   pii = inv(transpose(J)*J)*transpose(J)*yk;
   B0_new = B(1) + pii(1);
   B1_new = B(2) + pii(2);
   B2_new = B(3) + pii(3);
   B_new = [B0_new B1_new B2_new]
   err = sqrt(transpose(B_new-B)*(B_new-B)^2);
   B = B_new;
end
B
for i = 1:N
     x = M(i,1);%get x values from first column of matrix
    yfit(i) = B(1)*exp(1)^(-(x-B(2))^2/(2*B(3)^2));
end
ms = 20; % MarkerSize
plot(M(:,1),M(:,2),'b.','MarkerSize',ms);%plots points in red
set(0, 'DefaultLineLineWidth', 6);% sets the line width of graph
hold on; %this plots all the points calculated by the function
plot(M(:,1),yfit,'r-');%plots points in blue
set(0, 'DefaultLineLineWidth', 4);% sets the line width of graph
legend('Data','Model Fit');
hold on;
xlabel('xData');
ylabel('yData');

