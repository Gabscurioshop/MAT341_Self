function plot_Gaussian_Elimination_Scaling()
%this function plots the number of arithmetic functiond needed to row
%reduce an N x N matrix
NVec = 2:1:100;
len = length(NVec);%length of NVec

for i=1:len
    %calculates probability for each matrix size in vector
    x(i) = NVec(i);%gets the element at index i in NVec
    opsVec(i) =  go_Go_Gaussian_Elimination(x(i));
    %number of matrix operations
end

opsfig = figure;
%plots two figures on loglog graph
loglog(x,opsVec,'bo-')%plots points in blue
hold on; %this plots all the points calculated by the function
set(0, 'DefaultLineLineWidth', 5);% sets the line width of graph
xlabel('Size of Matrix, N');
ylabel('Operation Count');
plotfig = figure;
%plots two figures on plot graph
plot(x,opsVec,'bo-');%plots points in blue
hold on;
set(0, 'DefaultLineLineWidth', 5);% sets the line width of graph
%labels the axes
xlabel('Size of Matrix, N');
ylabel('Operation Count');
%a) As the size of the matrix increases, the number of operations needed to
%compute reduced echelon form increased. It appears quadratic because the
%number of operations do not increase at a constant rate.