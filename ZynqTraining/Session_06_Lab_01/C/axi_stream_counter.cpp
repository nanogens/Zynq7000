// MT, This is a simple axi stream counter

int axi_stream_counter(int * counter_output) // definition of the ports, interfaces of the module
{
	static int counterValue = 0; // it is a static because everytime i want to call this function, it should begin from its previous state

	counterValue++;

	*counter_output = counterValue;

	return 0;
}