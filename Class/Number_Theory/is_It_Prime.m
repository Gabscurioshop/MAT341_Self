<<<<<<< HEAD
function is_It_Prime(N)
%prime number: # is only divisble by 1 and itself

%input: positive integer N

%modular arithmetic
%mod(4, 2) = 4 mod 2
%mod(4,3)

%must check integers up to sqrt(N) to see if prime
%try: floor(sqrt(N)) or ceil(sqrt(N)) to ensure integer cutoff

isPrime = 1;%flag that says number is prime
k = sqrt(N);
%i = 2;
%while isPrime
for i =2: floor(k)
   if(mod(N,i) == 0)
        %str = 'not prime.';
        isPrime = 0; %reset flag to 0 saying not prime
        break;
   end
    %i = i +1;
end

if isPrime == 1
    str = 'number appears prime'
else
    str = 'number is not prime'
=======
function is_It_Prime(N)
%prime number: # is only divisble by 1 and itself

%input: positive integer N

%modular arithmetic
%mod(4, 2) = 4 mod 2
%mod(4,3)

%must check integers up to sqrt(N) to see if prime
%try: floor(sqrt(N)) or ceil(sqrt(N)) to ensure integer cutoff

isPrime = 1;%flag that says number is prime
k = sqrt(N);
%i = 2;
%while isPrime
for i =2: floor(k)
   if(mod(N,i) == 0)
        %str = 'not prime.';
        isPrime = 0; %reset flag to 0 saying not prime
        break;
   end
    %i = i +1;
end

if isPrime == 1
    str = 'number appears prime'
else
    str = 'number is not prime'
>>>>>>> 2236ab4280be55eeccfe6b147d132941bd6fb091
end