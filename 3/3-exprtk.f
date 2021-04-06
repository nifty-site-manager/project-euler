#!/usr/bin/env nift

int ans;

exprtk
{
	var max_int := 10000;
	var isPrime[10000] := [1];
	var primes[10000] := [0];
	var no_primes := 0;

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
			nsm_setnumber('ans', primes[i]);
			break;
		}
	}
}

console(ans)
