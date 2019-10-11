<<<<<<< HEAD
function run_ALOT_of_Dice()

NVec = [1:1:10 20:5:100 150:50:1000 1500:500:10000 15000:5000:1e5];

for i = 1: length(NVec)
   probN = estimate_Die_Probability(NVec(i));
   
   err(i) = abs(probN-1/6);
end

loglog(NVec,err,'r*');
xlabel('N');
ylabel('error');
=======
function run_ALOT_of_Dice()

NVec = [1:1:10 20:5:100 150:50:1000 1500:500:10000 15000:5000:1e5];

for i = 1: length(NVec)
   probN = estimate_Die_Probability(NVec(i));
   
   err(i) = abs(probN-1/6);
end

loglog(NVec,err,'r*');
xlabel('N');
ylabel('error');
>>>>>>> 2236ab4280be55eeccfe6b147d132941bd6fb091
set(gca, 'FontSize',32);