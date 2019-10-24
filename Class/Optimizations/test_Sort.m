function test_Sort()
%x = [2 -3 1.7 5]'
%[xSorted,indsVec] = sort(x);
%xSorted
%indsVec

%pick three points between [0,2]
x1 = 1.75;
x2 = 1.25;
x3 = 0.6;

%make vector of points
xVec = [x1 x2 x3]

%creat vector of function vals
fVec = [f(x1) f(x2) f(x3)]

%sort function value vector
[fnew,indsVec] = sort(fVec)
xLeast = xVec(indsVec(1));
xMiddle = xVec(indsVec(2));
xGreat = xVec(indsVec(3));

function val = f(x)
val = 0.5-x*exp(-x^2);