# 1 "D:/Github/Zynq7000/ZynqTraining/Session_06_Lab_01/HLS/C/axi_stream_counter_range.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/Github/Zynq7000/ZynqTraining/Session_06_Lab_01/HLS/C/axi_stream_counter_range.cpp"


int axi_stream_counter_range(int count_range, int * counter_output)
{
 int counterValue = 0;

 for (counterValue = 0; counterValue < count_range; counterValue++)
 {
  *counter_output = counterValue;
 }
 counterValue++;

 return 0;
}
