<<<<<<< HEAD
function practice_IFs()

x = 8;

if x < 5
    A = 10;
else
    A = 57.5;
    
end

y = 37;

if y < 5
    B = 2*y-1;
elseif y < 10
    B = 3*y^2+2;
end

x = 3;
if x<2
    C = 1;
end    
if x < 5
    C =2;
end
if x<10
    C =3;
end
if x<100
    C =4;
end
if x < 1000
    C = 5;
end
C

%less than or equal to
if x <= y
    A =1;
end
%greater than or equal to
if x >= y
    A = 2;
end
%equal to (two equal signs)
if x == y
    A =3;
end
%Not equal to
if x ~= y
    A =4;
end
%AND (if both statements are true
if((x<=y) && (x~=y))
    A = 5;
end

%OR (if either statement or both is true do something
if((x>y) || (x<y))
    A = 6;
=======
function practice_IFs()

x = 8;

if x < 5
    A = 10;
else
    A = 57.5;
    
end

y = 37;

if y < 5
    B = 2*y-1;
elseif y < 10
    B = 3*y^2+2;
end

x = 3;
if x<2
    C = 1;
end    
if x < 5
    C =2;
end
if x<10
    C =3;
end
if x<100
    C =4;
end
if x < 1000
    C = 5;
end
C

%less than or equal to
if x <= y
    A =1;
end
%greater than or equal to
if x >= y
    A = 2;
end
%equal to (two equal signs)
if x == y
    A =3;
end
%Not equal to
if x ~= y
    A =4;
end
%AND (if both statements are true
if((x<=y) && (x~=y))
    A = 5;
end

%OR (if either statement or both is true do something
if((x>y) || (x<y))
    A = 6;
>>>>>>> 2236ab4280be55eeccfe6b147d132941bd6fb091
end