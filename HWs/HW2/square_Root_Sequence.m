function val = square_Root_Sequence(m,n)
%this determines the limit of tn for an input m
t1 = sqrt(m); %our old t value
t2 = sqrt(m-sqrt(m));%our new t value

%calculate successive square root m sequence for n terms
for i = 1: n
    t = sqrt(m-sqrt(m+t1))
    t1 = t2; %replace new t value to old t value
    t2 = t;%replace current t value to new t value
end
t %print t(n)

%lim m = 13; 3
%lim m =31; 5
%lim m = 43; 6
