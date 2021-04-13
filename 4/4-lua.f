#!/usr/bin/env nift

lua_addnsmfns();

int ans;

lua
{
	function isPalindrome(n)
		str = {}
		while n ~= 0 do
			table.insert(str, n%10)
			n = (n - n%10)/10
		end

		size = table.getn(str)
		imax = size/2

		for i=1,imax do
			if str[i] ~= str[size-i+1] then
				return 0
			end
		end
		return 1
	end

	function max(a, b)
		if a > b then
			return a
		else
			return b
		end
	end

	max_pal = 0

	for i=100,999 do
		for j=100,999 do
			if isPalindrome(i*j) == 1 then
				max_pal = max(max_pal, i*j)
			end
		end
	end

	nsm_setnumber("ans", max_pal)

}

console(ans);
