function estimated_Dist_of_Points()

Nvec = [1:1:10 20:5:100 150:50:1000 1500:500:10000 15000:5000:1e5];
dist = [];
for i = 1: length(Nvec)
    dist(i) = dist_Points_in_Rectangle(Nvec(i));
end

loglog(Nvec,dist,'r*');
xlabel('N');
ylabel('estimated distance');
%set(gca, 'FontSize',3);