#!/usr/bin/env nift

lua_addnsmfns();

int ans;

lua
{
	max_int = 1000000
	no_primes = 0
	isPrime = {0, 0}

	for i=2,max_int do
		isPrime[i] = 1
	end

	for i=2,max_int do
		if isPrime[i] == 1 then
			no_primes = no_primes + 1

			if no_primes == 10001 then
				nsm_setnumber("ans", i)
				break
			end

			for j=2*i,max_int,i do
				isPrime[j] = 0
			end
		end
	end
}

console(ans)
