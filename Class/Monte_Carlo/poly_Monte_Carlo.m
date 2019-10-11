<<<<<<< HEAD
function val = poly_Monte_Carlo(N,L)
val = [];
coeffs = [];
for i=1:N
    
%quadratic coefficients
    c0 = rand()*2*L-L;
    c1 = rand()*2*L-L;
    c2 = rand()*2*L-L;
    coeffs = [c2 c1 c0]
     val = roots(coeffs)%find the roots

=======
function val = poly_Monte_Carlo(N,L)
val = [];
coeffs = [];
for i=1:N
    
%quadratic coefficients
    c0 = rand()*2*L-L;
    c1 = rand()*2*L-L;
    c2 = rand()*2*L-L;
    coeffs = [c2 c1 c0]
     val = roots(coeffs)%find the roots

>>>>>>> 2236ab4280be55eeccfe6b147d132941bd6fb091
end