# 1 "D:/Github/Zynq7000/ZynqTraining/Session_06_Lab_01/HLS/simC/axi_stream_counter_range_testbench.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "D:/Github/Zynq7000/ZynqTraining/Session_06_Lab_01/HLS/simC/axi_stream_counter_range_testbench.cpp"


int axi_stream_counter_range(int, int *);

int main(void)
{
 int i;
 int y;

 for (i = 0; i < 100; i++)
 {
  axi_stream_counter_range(i, &y);
 }
 return 0;


}
