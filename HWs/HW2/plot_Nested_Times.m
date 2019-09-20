function plot_Nested_Times()

N = [1:1:10  20:10:100  125 150 175 200 225 250]; %vector N
%[1 2 3 4 5 6 7 8 9 10 20 30 40 50 60 70 80 90 100 125 150 175 200 225 250] 
len = length(N); %counts the number of terms in vector N



%calculates time for each N in vector
for i =1:len
    x(i) = N(i);%gets the element at index i in vector N
    y(i) = calculate_Nested_For_Loop_Time( x(i) ); %time measured
end

loglog(x,y,'mo-')%plots points in magenta
hold on; %this plots all the points calculated by the function
set(0, 'DefaultLineLineWidth', 3);% sets the line width of graph

%labels the axes
xlabel('N')
ylabel('time')
