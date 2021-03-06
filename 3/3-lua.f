#!/usr/bin/env nift

lua_addnsmfns();

int ans;

lua
{
	max_int = 10000
	isPrime = {0, 0}
	no_primes = 0
	primes = {}

	for i=2,max_int do
		isPrime[i] = 1
	end

	for i=2,max_int do
		if isPrime[i] == 1 then
			primes[no_primes] = i
			no_primes = no_primes + 1

			for j=2*i,max_int,i do
				isPrime[j] = 0
			end
		end
	end

	for i=no_primes-1,0,-1 do
		if 600851475143%primes[i] == 0 then
			nsm_setnumber("ans", primes[i])
			break
		end
	end
}

console(ans);
