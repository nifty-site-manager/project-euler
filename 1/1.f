#!/usr/bin/env nift

std::vector<double> multiples(1000, 0);
int val = 0;

for(int i=3; i<1000; i+=3)
	multiples.set($[i], 1);

for(int i=5; i<1000; i+=5)
	multiples.set($[i], 1);

for(int i=0; i<1000; i+=1)
	if(multiples.at($[i]) == 1)
		val += i;

//alternative
/*
for(int i=0; i<1000; i+=1)
	if(==(multiples.at($[i]), 1))
		val += i;
*/

console(val)
