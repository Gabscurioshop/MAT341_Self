function val = general_Poly(cVec, x)
%cVec could have 1 or 2 or ... 100 terms

n = length(cVec);
val = 0;
for i=1: n
    val = val + cVec(i)* x^(i-1) 
end