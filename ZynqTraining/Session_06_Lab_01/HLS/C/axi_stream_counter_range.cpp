// MT, This is a simple axi slave stream counter

int axi_stream_counter_range(int count_range, int * counter_output) // indicates upto which number to count, everytime a counter is loaded into our module, we want to begin counting from 0 to count_range
{
	int counterValue = 0; // not a static since we are doing a new task everytime, not storing previous value

	for (counterValue = 0; counterValue < count_range; counterValue++)
	{
		*counter_output = counterValue;
	}
	counterValue++;

	return 0;
}
