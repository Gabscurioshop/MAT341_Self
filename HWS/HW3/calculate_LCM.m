function lcm_val= calculate_LCM(x,y)
%find least common multiple between two integers

%assign lcm to the largest input value
if x > y
    lcm_val = x;
else
    lcm_val=y;
end

while(1)
    %check if the lcm is divisible by both x and y
    %if lcm is divisble by both, break out of while loop
    if rem(lcm_val,x) == 0 && rem(lcm_val,y) == 0
        break
    end
    %if it's not divisible by both x and y, increment lcm
    lcm_val = lcm_val +1;
end 
lcm_val





