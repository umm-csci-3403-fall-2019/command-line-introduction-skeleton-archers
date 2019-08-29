mkdir -p $2
tar xf NthPrime.tgz -C $2

gcc -o $2/NthPrime/NthPrime $2/NthPrime/main.c $2/NthPrime/nth_prime.c


$2/NthPrime/NthPrime $1
