#pragma line 1 "D:/Github/Zynq7000/ZynqTraining/Session_06_Lab_01/HLS/simC/axi_stream_counter_testbench.cpp"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "D:/Github/Zynq7000/ZynqTraining/Session_06_Lab_01/HLS/simC/axi_stream_counter_testbench.cpp"
int axi_stream_counter (int *);
#pragma empty_line
int main(void)
{
 int i;
 int y;
#pragma empty_line
 for (i = 0; i < 100; i++)
 {
  axi_stream_counter(&y);
 }
 return 0;
#pragma empty_line
#pragma empty_line
}
