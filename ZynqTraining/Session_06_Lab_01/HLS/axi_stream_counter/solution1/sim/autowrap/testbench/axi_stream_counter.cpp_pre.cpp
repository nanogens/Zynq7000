# 1 "D:/Github/Zynq7000/ZynqTraining/Session_06_Lab_01/HLS/C/axi_stream_counter.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/Github/Zynq7000/ZynqTraining/Session_06_Lab_01/HLS/C/axi_stream_counter.cpp"


int axi_stream_counter(int * counter_output)
{
 static int counterValue = 0;

 counterValue++;

 *counter_output = counterValue;

 return 0;
}
