function prob = estimate_Triangle_Center_Circle_Probability(N)

%this estimates the probability that the center of 
%a circle is contained within a triangle
count = 0;
%center of the circle
x = 0;
y = 0;
for i=1: N
    %generates random point values from -2 to 2
    x1 = 4*rand()-2;
    x2 = 4*rand()-2;
    x3 = 4*rand()-2;
    y1 = 4*rand()-2;
    y2 = 4*rand()-2;
    y3 = 4*rand()-2;
    %calculate area of triangle
    A = [x1*(y2-y3)+x2*(y3-y1)+x3*(y1-y2)]/2;
    %calculate area of triangles with origin of circle
    A1 = [x*(y2-y3)+x2*(y3-y)+x3*(y-y2)]/2;
    A2 = [x1*(y-y3)+x*(y3-y1)+x3*(y1-y)]/2;
    A3 = [x1*(y2-y)+x2*(y-y1)+x*(y1-y2)]/2;
    
    %if the sum of the areas of the three triangles containing 0,0
    %equal the area of triangle
    %increment counter
    A_sum = A1 + A2 + A3;
    if A_sum == A
        count = count +1; 
    end
end
prob = count/N;
