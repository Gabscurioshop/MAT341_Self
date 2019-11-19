function vary_Error_Tolerances_To_Compare()
%this script runs Gradient_Descent_1 and Gradient_Descent_2 
%to determine the value of gamma that minimizes the total number of 
%iterations needed to achieve a particular accuracy
%It creates 2 plots that determine the relationship between the number
%of iterations and gamma

gamma = 1.05;%best step-size
errTolVec= [1e-1 1e-2 1e-3 1e-4 1e-5 1e-6 1e-7 1e-8 1e-9 1e-10 1e-11];

len = length(errTolVec);%length of errTolVec

for i=1:len
    %calculates number of trials for each error tolerance in vector
    x(i) = errTolVec(i);%gets the element at index i in errTolVec
    fssVec(i) = Gradient_Descent_1(x(i),gamma);%fixed step-size
    bbssVec(i) = Gradient_Descent_2(x(i));%Barzilai-Borwein step-size
end

fssfig = figure;
%plots two figures on semilog graph
semilogx(x,fssVec,'bo-');%plots points in blue
hold on; %this plots all the points calculated by the function
semilogx(x,bbssVec,'ro-');%plots points in red
hold on;
legend('Fixed Step','Barzilai-Borwein');
set(0, 'DefaultLineLineWidth', 5);% sets the line width of graph
xlabel('error tolerance, tol');
ylabel('# of iterations, N');
bbssfig = figure;
%plots two figures on loglog graph
loglog(x,fssVec,'bo-');%plots points in blue
hold on; %this plots all the points calculated by the function
loglog(x,bbssVec,'ro-');%plots points in red
hold on;
set(0, 'DefaultLineLineWidth', 5);% sets the line width of graph
%labels the axes
xlabel('error tolerance, tol');
ylabel('# of iterations, N');
legend('Fixed Step','Barzilai-Borwein');

%a)The fixed step algorithm appears to converge faster towards the minimum
%b)When changing the fixed step-size to 0.5, the fixed step-size algorithm converged
%at a slower rate. Thus, the Barzilai-Borwein alogirthm converged 
%faster towards the minimum.
%c)One advantage of the Barzilai-Borwein step-size is it's able to find
%the minimum in a small amount of iterations
%d)If I were to modify the function, I would use the Barzilai-Borwein step
%size. Despite the complex calculation for iits step-size, it reduced the 
%number of iterations needed to find the new function's minimum.