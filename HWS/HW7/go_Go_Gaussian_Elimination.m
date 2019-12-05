function OpCount = go_Go_Gaussian_Elimination(N)
% this function reduces a matrix to reduced row echelon form without using
%any built in matrix functions
A = rand(N,N);%create NxN matrix with random values;
OpCount = 0;%counts the number of operations
lead = 1;%column that holds the diagonal
while lead < N
    d = 0;%divisor 
    m = 0;%multiplicator
    for r = 1:N
        d = A(lead,lead);
        m = A(r,lead)/A(lead,lead);
        for c = 1:N
           if r  == lead%row number matches column number
              A(r,c) = A(r,c)/d;
              OpCount = OpCount + 1;%increment operation counter
              %reduce row by a factor of its pivot position
           else
               A(r,c) = A(r,c)- A(lead,c)*m;
               OpCount = OpCount + 1;%increment operation counter
               %reduce row by subtracting a factor of another row
            end
        end
    
    end
    lead = lead +1;%move to next column value
end
%A
%OpCount
