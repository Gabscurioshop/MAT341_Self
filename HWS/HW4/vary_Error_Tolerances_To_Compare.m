function vary_Error_Tolerances_To_Compare()

%error tolerance vector
errTolVec= [1e-1 1e-2  1e-3  1e-4  1e-5  1e-6  1e-7  1e-8  1e-9  1e-10  1e-11  1e-12];

len = length(errTolVec);%length of errTolVec

for i=1:len
    %calculates probability for each radius in vector
    x(i) = errTolVec(i);%gets the element at index i in errTolVec
    gsVec(i) = golden_Search(x(i)); %number of trials from golden search
    spiVec(i) = successive_Parabolic_Interpolation(x(i));
    %number of trials from successive parabolic interpolation
end

gsfig = figure
semilogx(x,gsVec,'bo-')%plots points in blue
hold on; %this plots all the points calculated by the function
semilogx(x,spiVec,'ro-')%plots points in blue
legend('Golden Search','Succ. Para. Interp.')
set(0, 'DefaultLineLineWidth', 5);% sets the line width of graph
spffig = figure
loglog(x,gsVec,'bo-');%plots points in blue
hold on;
loglog(x,spiVec,'ro-')%plots points in blue
hold on;
%labels the axes
xlabel('error tolerance, tol')
ylabel('# of iterations, N')
legend('Golden Search','Succ. Para. Interp.')