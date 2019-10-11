<<<<<<< HEAD
function exp_dist_vs_aspect_ratio()

Lx = [1:1:10 20:5:100 150:50:1000 1500:500:10000 15000:5000:1e5];
dist = [];
for i = 1: length(Lx)
    dist(i) = dist_Points_in_Rectangle(length(Lx),Lx(i));
end

plot(Lx,dist,'r-');
xlabel('Aspect Ratio');
=======
function exp_dist_vs_aspect_ratio()

Lx = [1:1:10 20:5:100 150:50:1000 1500:500:10000 15000:5000:1e5];
dist = [];
for i = 1: length(Lx)
    dist(i) = dist_Points_in_Rectangle(length(Lx),Lx(i));
end

plot(Lx,dist,'r-');
xlabel('Aspect Ratio');
>>>>>>> 2236ab4280be55eeccfe6b147d132941bd6fb091
ylabel('estimated distance');