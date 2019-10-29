function vary_Error_Tolerances_To_Compare()
%this function plots 2 graphs that display the relationship
%the error tolerances and the number of iterations for 
%golden _search and successive parabolic interploation
%error tolerance vector
errTolVec= [1e-1 1e-2  1e-3  1e-4  1e-5  1e-6  1e-7  1e-8  1e-9  1e-10  1e-11  1e-12 1e-13 1e-14 1e-15];

len = length(errTolVec);%length of errTolVec

for i=1:len
    %calculates probability for each error tolerance in vector
    x(i) = errTolVec(i);%gets the element at index i in errTolVec
    gsVec(i) = golden_Search(x(i)); %number of trials from golden search
    spiVec(i) = successive_Parabolic_Interpolation(x(i));
    %number of trials from successive parabolic interpolation
end

gsfig = figure
%plots two figures on semilog graph
semilogx(x,gsVec,'bo-')%plots points in blue
hold on; %this plots all the points calculated by the function
semilogx(x,spiVec,'ro-')%plots points in red
legend('Golden Search','Succ. Para. Interp.')
set(0, 'DefaultLineLineWidth', 5);% sets the line width of graph
spffig = figure
%plots two figures on loglog graph
loglog(x,gsVec,'bo-');%plots points in blue
hold on;
loglog(x,spiVec,'ro-')%plots points in red
hold on;
%labels the axes
xlabel('error tolerance, tol')
ylabel('# of iterations, N')
legend('Golden Search','Succ. Para. Interp.')
set(0, 'DefaultLineLineWidth', 5);% sets the line width of graph
%a)For less accurate tolerances, the successive
%parabolic interploation algorithm converges faster to the minimum.
%b)When increasing the accuracy threshold, the convergence
%rate of the golden search algorithm remains unchanged while the
%convergence rate for successive parabolic interpolation changes.
%Successive parabolic interpolation algorithm doesn't always converge
%quicker. This is the case because that algorithm uses matrix
%multiplication to solve for the coefficients of a parabola.
%As your calculating a larger number of matrix calculations, 
%the coefficients get closer to zero. 