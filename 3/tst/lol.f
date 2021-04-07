#!/usr/bin/env nift
string params = "file0.txt";

int i;

exprtk	
{
	for(i:=1; i<100000; i+=1) 
	{
	    params += ', file' + nsm_tostring('i') + '.txt';
	}
}
 
poke{mt}(4, $[params]);
rmv{mt}(4, $[params]);
