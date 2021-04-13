#!/usr/bin/env nift

lua_addnsmfns();

int ans;

lua
{
	sum1 = 0
	sum2 = 0

	for i=1,100 do
		sum1 = sum1 + i^2
		sum2 = sum2 + i
	end

	nsm_setnumber("ans", sum2^2-sum1)
}

console(ans)
