#!/usr/bin/env nift

lua_addnsmfns();

int ans;

lua
{
	max_int = 10000
	isPrime = {0, 0}
	primes = {}

	for i=2,max_int do
		isPrime[i] = 1
	end

	for i=2,max_int do
		if isPrime[i] then
			primes[table.getn(primes)+1] = i

			for j=2*i,max_int,i do
				isPrime[j] = 0
			end
		end
	end

	for i=table.getn(primes)-1,0,-1 do
		if 600851475143%primes[i] == 0 then
			nsm_setnumber("ans", primes[i])
			break
		end
	end
}

console(ans);
