<<<<<<< HEAD
function val = estimate_MC_Pi_Error(N)

count = 0;
%pi = 0;


for i = 1:N
   
    x = 0.5 * rand();
    y = 0.5 * rand();
    
   r = sqrt(x^2 +y^2);
   if r<= 0.5
       count = count + 1;
   end
   pi_est = 4 * count/N;
end
=======
function val = estimate_MC_Pi_Error(N)

count = 0;
%pi = 0;


for i = 1:N
   
    x = 0.5 * rand();
    y = 0.5 * rand();
    
   r = sqrt(x^2 +y^2);
   if r<= 0.5
       count = count + 1;
   end
   pi_est = 4 * count/N;
end
>>>>>>> 2236ab4280be55eeccfe6b147d132941bd6fb091
pi_est 