// MT, simple GPIO to AXIS converter.

#include "ap_int.h"

int axi_stream_gpio(ap_int<1> InputData, int *OutputData) // input port of 1 bit stream of data coming into our module on InputData port, the other one is output data
{
	static int bitCounter = 0; // need a bit counter to count every 32 bits and then put the data as a parallel 
	static int tmpOutput = 0;

	tmpOutput = tmpOutput * 2 + InputData;
	bitCounter++;

	if (bitCounter == 32)
	{
		*OutputData = tmpOutput;
		bitCounter = 0;
		tmpOutput = 0;
	}

	return 0;
}
