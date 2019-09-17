function val = e_Approx(N)

val = 0; %initialize
for i=1 : N
   val = val + 1/factorial(i-1);
end