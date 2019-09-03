#extract_and_compile.sh takes two arguments, a number that is passed to  C program as an arugment and the name of the directory where the C compiles.

#make a directory and extract into it.
mkdir -p $2
tar xf NthPrime.tgz -C $2
#Compile the c code
gcc -o $2/NthPrime/NthPrime $2/NthPrime/main.c $2/NthPrime/nth_prime.c
#Run the c code
$2/NthPrime/NthPrime $1
