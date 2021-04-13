#!/usr/bin/env nift

int ans, 
    max_int = 1000000,
    no_primes = 0;
std::vector<double>{et} isPrime($[max_int], 1);

exprtk
{
	isPrime[0] = isPrime[1] = 0;

	for(var i:=2; i<max_int; i+=1)
	{
		if(isPrime[i])
		{
			no_primes += 1;

			if(no_primes == 10001)
			{
				ans := i;
				break;
			}

			for(var j:=2*i; j<max_int; j+=i)
			{
				isPrime[j] := 0;
			}
		}
	}
}

console(ans)
