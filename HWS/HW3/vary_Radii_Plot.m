function vary_Radii_Plot()
%this plots estimated probabilities for 
%particular radius vs radius r

rVec= [0.01:0.005:0.10  0.1:0.01:0.5];

len = length(rVec);%length of rVec

N = 1e5;%number of trials

for i=1:len
    %calculates probability for each radius in vector
    x(i) = rVec(i);%gets the element at index i in vector rVec
    y(i) = estimate_Coin_In_Square_Probability(x(i),N); %probability
end

loglog(x,y,'mo-')%plots points in magenta
hold on; %this plots all the points calculated by the function

%labels the axes
xlabel('radius')
ylabel('estimated probabillity')

%estimated probability 0.5 @ x = 0.29
%estimated probability 0.1 @ x = 0.68
%estimated probability 0.01 @ x = 0.90