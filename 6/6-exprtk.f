#!/usr/bin/env nift

int ans, wtf

exprtk
{
	var sum1 := 0;
	var sum2 := 0;

	for(var i:=1; i<=100; i+=1)
	{
		sum1 += i^2;
		sum2 += i;
	};

	ans := sum2^2 - sum1;
}

console(ans)
