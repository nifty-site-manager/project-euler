#!/usr/bin/env nift

std::vector<double> fibs;

fibs.push_back(1);
fibs.push_back(1);

int i=0, j=1;
int val = 0;
int max_fib = 4000000;

for(;fibs.at($[i]) + fibs.at($[j]) < $[max_fib];)
	fibs.push_back($`fibs.at($[i]) + fibs.at($[j])`);
	i+=1;
	j+=1;
	

int fibs_size = fibs.size()
for(int i=0; $[i] < $[fibs_size]; i+=1)
	//console($[i], " ", fibs.at($[i]))
	if(fibs.at($[i]) % 2 == 0)
		val += fibs.at($[i]);

//alternative
/*
for(int i=0; <($[i], fibs.size()); i+=1)
	if(fibs.at($[i]) % 2 == 0)
		val += fibs.at($[i]);
*/

console(val);

