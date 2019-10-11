function plot_estimated_Probability_of_Real_Roots()
%this plots the estimated probability of real roots
%for a vector of L valies
LVec = [1e-3:0.5e-3:9e-3 1e-2:0.5e-2:9e-2 1e-1:0.5e-1:9e-1 1e0:0.5e0:10];
prob = [];%estimated probability vector

%calculate probability
for i = 1: length(LVec)
    prob(i) = poly_Monte_Carlo(length(LVec),LVec(i));
end

%plot points
loglog(LVec,prob,'r-');
xlabel('L');
ylabel('estimated probability for real roots');