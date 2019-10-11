function plot_Prob_Real_Roots_vs_Degree()

xVec = [0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20];
prob = [];
for i= 1:length(xVec)
    prob(i) = poly_Monte_Carlo(xVec(i),1,2.5e4);
end
%plot points
loglog(xVec,prob,'r-');
xlabel('Polynomial Degree');
ylabel('Probability for real roots');