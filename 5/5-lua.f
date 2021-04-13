#!/usr/bin/env nift

lua_addnsmfns();

int ans;

lua
{
	i=1
	while true do
		yay = true
		for j=1,20 do
			if i%j ~= 0 then
				yay = false
				i = i+1
				break
			end
		end

		if yay == true then
			nsm_setnumber("ans", i)
			break
		end
	end
}

console(ans)
