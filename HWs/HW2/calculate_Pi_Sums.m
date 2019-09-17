function calculate_Pi_Sums()
%this function calculates the sums of two sequences 
%until the following condition is met:
%|aNA??|< tol and |bNB??|< tol

tol = 1e-6;
err =0;%conditional variable
a_sum = 0;%sum for a
b_sum = 0;%sum for b

a_N = 0; %sequence starts when k = 0,minimum value of a_N
b_N=0; %sequence starts when k = 0, minimum value of b_N

%find the sum for sequence a
while err < tol
   a_sum = a_sum + 6/sqrt(3) *(-1)^a_N/[(3^a_N)*(2*a_N+1)]
   err = abs(a_sum - pi);
   a_N = a_N + 1; %a_N increments for each iteration
    
end
Na = a_N-1%while loop returns a_N+1, we are looking for a_N

err = 0; %reset err back to 0 to handle summation of b
b1_sum = 0; %part 1 of summation formula for b
b2_sum = 0; %part 2 of summation formula for b

%find the sum for sequence b
while err < tol
   b1_sum = b1_sum + 16*(-1)^b_N/[5^(2*b_N+1)*(2*b_N+1)];
   b2_sum = b2_sum + 4*(-1)^b_N/[239^(2*b_N+1)*(2*b_N+1)];
   b_sum = b1_sum - b2_sum
   err = abs(b_sum - pi);
   b_N = b_N + 1; %b_N increments for each iteration
end
Nb = b_N-1%while loop returns b_N+1, we need b_N

