function prob = estimate_Die_Probability(N)
%roll a die N times, what does peob look like for rolling a 5?
count5 = 0;
for i=1:N
   val = roll_Dice(); %roll a dice
   if val == 5
       count5 = count5 +1;
   end
end
prob = count5/N;

function val = roll_Dice()

%roll the die b/w [0,6]
roll = 6*rand();

%round value down
val = ceil(roll);