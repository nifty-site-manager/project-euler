#!/usr/bin/env nift

int ans, 
    max_int = 10000,
    no_primes = 0;
std::vector<double>{et} isPrime($[max_int], 1),
                        primes($[max_int], 0);

exprtk
{
	isPrime[0] = isPrime[1] = 0;

	for(var i:=2; i<max_int; i+=1)
	{
		if(isPrime[i])
		{
			primes[no_primes] := i;
			no_primes += 1;

			for(var j:=2*i; j<max_int; j+=i)
			{
				isPrime[j] := 0;
			}
		}
	}

	for(var i:=no_primes-1; i>=0; i-=1)
	{
		if(600851475143 % primes[i] == 0)
		{
			ans := primes[i];
			break;
		}
	}
}

console(ans)
