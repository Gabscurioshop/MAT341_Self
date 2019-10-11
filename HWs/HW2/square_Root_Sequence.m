function val = square_Root_Sequence(m,n)
%this determines the limit of t_{n} for an input m
t1 = sqrt(m); %our old t value
t2 = sqrt(m-sqrt(m));%our new t value

%calculate successive square root m sequence for n terms
for i = 1: n
    t = sqrt(m-sqrt(m+t1))
    %swap t terms with the current and previous t-1 terms
    t1 = t2; 
    t2 = t;
end
t %print t(n)

%lim m = 13; 3
%lim m =31; 5
%lim m = 43; 6
