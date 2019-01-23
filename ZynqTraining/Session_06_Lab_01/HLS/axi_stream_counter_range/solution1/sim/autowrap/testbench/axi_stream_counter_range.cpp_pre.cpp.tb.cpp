// ==============================================================
// File generated on Mon Jan 21 17:58:53 -0500 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#1 "D:/Github/Zynq7000/ZynqTraining/Session_06_Lab_01/HLS/C/axi_stream_counter_range.cpp"
#1 "<built-in>"
#1 "<command-line>"
#1 "D:/Github/Zynq7000/ZynqTraining/Session_06_Lab_01/HLS/C/axi_stream_counter_range.cpp"


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
