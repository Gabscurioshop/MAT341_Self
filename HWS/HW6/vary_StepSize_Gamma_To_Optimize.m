function vary_StepSize_Gamma_To_Optimize()
%this script runs Gradient_Descent_1 to determine the value of gamma
%that minimizes the total number of iterations needed to achieve
%1e-10 accuracy
%It creates a plot that determines the relationship between the number
%of iterations and gamma

tol = 0.02;%error tolerance
%vector of gamma values
gammaVec = [0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5];

len = length(gammaVec);%length of gammaVec

for i = 1:len
    x(i) = gammaVec(i);%gets the element at index i in gammaVec
    nVec(i) = Gradient_Descent_1(tol,x(i));
    %get number of trials for each gammma
end
 gdfig = figure;
 semilogx(x,nVec,'bo-');%plots points in blue
 hold on; %this plots all the points calculated by the function
 legend('Fixed Step');
 xlabel('step-size, gamma');
ylabel('# of iterations, N');
 set(0, 'DefaultLineLineWidth', 5);% sets the line width of graph
%a) The graph has the smallest number of iterations when gamma
%ranges from 0.9 to 1.2. Thus, the best step-size for this particular 
%function is 1.05.