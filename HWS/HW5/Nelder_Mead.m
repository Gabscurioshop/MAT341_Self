function N = Nelder_Mead(tol)
%This function finds the minima of f(x,y)=(sin(x)+cos(y))
%using the Nelder-Mead algorithm
%It also returns the number of iterations needed to achieve a
%certain error tolerance

%our initial vectors
aVec = [0.35 2.8];
bVec = [4 4];
cVec = [4.5 4.5];
xVec = [aVec; bVec; cVec];%3 x 2 array containing all 3 vectors

err = abs(f(xVec(1,:))-f(xVec(3,:)));%error
N = 0; %number of iterations

while err > tol
     N = N + 1;%increment iteration counter
    %compute f(x,y)
    fVec = [f(xVec(1,:)) f(xVec(2,:))  f(xVec(3,:))];
    
    %reorder points such that f(x1vec)<=f(x2vec)<=f(x3vec)
    [fnew,indsVec] = sort(fVec);
    xLeast = xVec(indsVec(1),:);%least
    xMiddle = xVec(indsVec(2),:);%middle
    xGreat = xVec(indsVec(3),:);%greatest
    
    %rewrite reordered vectors from least to greatest f(x,y)
    xVec(1,:) = xLeast;%best value
    xVec(2,:) = xMiddle;
    xVec(3,:) = xGreat;%worst value
    
    %compute midpoint vector b/w vectors x1 and x2
    xMid = 0.5 *(xVec(1,:) +xVec(2,:));
    
    %compute reach vector 
    xReach = xMid +(xMid-xVec(3,:));
    
%transformation step
    if f(xReach) < f(xVec(3,:))
        xVec(3,:) = xReach;
        %repeat step 2
    else if f(xReach) >= f(xVec(3,:))
            xCent = 0.5*(xMid + xVec(3,:));
            if f(xCent) < f(xVec(3,:))
                xVec(3,:) = xCent;
                %repeat step 2
            else
                %shrink triangle in direction of x1
                xVec(2,:) = 0.5*(xVec(1,:) +xVec(2,:));
                xVec(3,:) = 0.5*(xVec(1,:) +xVec(3,:));
            end
        end
    end
    %update vectors with new values
    fVec = [f(xLeast) f(xMid) f(xVec(3,:))];
    xVec = [xLeast; xMid; xVec(3,:)];
    
    err = abs(f(xVec(1,:))-f(xVec(3,:)));%error condition
end
N
xVec

function val = f(v)
%get x and y components from the vector
x = v(1);
y = v(2);
val = -1*(sin(x)+cos(y));

%a)Using the initial points, it takes 30 iterations to achieve 1e-8
%accuracy.

%b)For the initial point, it appears to converge to (1.4526, 0.0672), so
%the true (x, y) point where the minima is located is (1.4526, 0.0672).
%It does look like 1e-8 accuracy because the script quickly returned the
%number of trials for finding the minima.

%c)It took 25 iterations to achieve 1e-8 accuracy with the new point
%(1.75,0.1). It located the minima (1.7535, 0.0895). In comparison to part 
%a, the number of iterations decreased because our error got smaller than
%the error tolerance at a quicker rate.

%d)The algorithm finds a minimum of (1.8254, 3.6079).
