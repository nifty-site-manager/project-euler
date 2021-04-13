#!/usr/bin/env nift

int ans = 1;

exprtk
{
	while(1)
	{
		var yay := 1;
		for(var j:=1; j<=20; j+=1)
		{
			if(ans%j != 0)
			{
				yay := 0;
				ans += 1;
				break;
			}
		}

		if(yay)
		{
			break;
		}
	}
}

console(ans)
