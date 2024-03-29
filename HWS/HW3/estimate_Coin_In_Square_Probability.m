function prob = estimate_Coin_In_Square_Probability(r,N)
%find probability that a coin is contained completely in a square
%dimensions of square [0,1] by [0,1]
%1e5 seems to be a reasonable number of trials because there 
%are enough points to display the logarithmic relationship
%between the probabilities and the radius

%What makes this more difficult than the coin flip case
%in class is we are unsure of the area of the coin that
%lands within the square
count = 0;

for i=1:N
    %position of the coin on the square
    x = rand();
    y = rand();
    
    %add the radius to each direction of x and y coordinates
    xr_dist = x + r;
    xl_dist = x - r;
    yu_dist = y + r;
    yd_dist = y - r;
    
    %check if the distance of the point is inside the square
    if xr_dist<1 && xl_dist<1 && yu_dist<1 && yd_dist<1
        count = count+1;
    end
    prob = count/N;
end
prob
