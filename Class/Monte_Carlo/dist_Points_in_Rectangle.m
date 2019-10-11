<<<<<<< HEAD
function val = dist_Points_in_Rectangle(n,Lw)
%coordinates for 2 random points
x1 =0;
x2 = 0;
y1 = 0;
y2 = 0;
d = 0;%distance from two points
val = 0;
for i=1:n
    x1 = Lw*rand();
    x2 = Lw*rand();
    y1 = rand();
    y2 = rand();
    %calculate distance for each trial
    d = d + sqrt((x2-x1)^2+(y2-y1)^2);
end
=======
function val = dist_Points_in_Rectangle(n,Lw)
%coordinates for 2 random points
x1 =0;
x2 = 0;
y1 = 0;
y2 = 0;
d = 0;%distance from two points
val = 0;
for i=1:n
    x1 = Lw*rand();
    x2 = Lw*rand();
    y1 = rand();
    y2 = rand();
    %calculate distance for each trial
    d = d + sqrt((x2-x1)^2+(y2-y1)^2);
end
>>>>>>> 2236ab4280be55eeccfe6b147d132941bd6fb091
val = d/n;%find the average after n trials