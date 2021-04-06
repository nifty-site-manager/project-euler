#!/usr/bin/env nift

exprtk.eval_params(1)

int max_int = 10000;
std::vector<double> isPrime($`max_int`, 1), primes;

isPrime.set(0, 0);
isPrime.set(1, 0);

for(int i=2; i < max_int; i+=1)
	if(isPrime.at(i))
		primes.push_back(i);
		for(int j = $`2*i`; j<max_int; j+=i)
			isPrime.set(j, 0);

for(int i=$`primes.size()-1`; i>=0; i-=1)
	if(600851475143 % primes.at(i) == 0)
		console(primes.at(i));
		break();

