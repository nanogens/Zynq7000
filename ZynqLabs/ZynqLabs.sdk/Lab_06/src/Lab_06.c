/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
//#include "xgpiops.h"
#include "xil_io.h"
#include "xparameters.h"


int main()
{

    int word1 = 0;
	int word2 = 0;
 	int word3 = 0;
 	int word4 = 0;
 	int word5 = 0;
 	int delay = 0;

	printf("\n\nhello 1\n\r");

 	Xil_Out8(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR, 0x10);
 	Xil_Out8(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 1, 0x20);
 	Xil_Out8(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 2, 0x30);
 	Xil_Out8(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 3, 0x40);
 	Xil_Out8(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4, 0x50);
 	Xil_Out8(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 5, 0x60);
 	Xil_Out8(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 6, 0x70);
 	Xil_Out8(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 7, 0x80);

 	Xil_Out16(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 0x10, 0xBEEF);
 	Xil_Out16(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 0x12, 0xDEAD);
 	Xil_Out16(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 0x14, 0xAAAA);
 	Xil_Out16(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 0x16, 0xBBBB);

 	Xil_Out32(0xE000A244,0x00);



 	while(1)
 	{

 		word1 = Xil_In8(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR); // 0x00000010

 		word2 = Xil_In16(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4); // 0x00006050

 		word3 = Xil_In32(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 0x10); // 0xDEADBEEF

 		word4 = Xil_In32(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 0x14); // 0xBBBBAAAA

 		word5 = Xil_In32(0xE000A244); // 0x00000000

 		printf("Word1 = 0x%08x\n\r",word1);
 		printf("Word2 = 0x%08x\n\r",word2);
 		printf("Word3 = 0x%08x\n\r",word3);
 		printf("Word4 = 0x%08x\n\r",word4);
 		printf("Word5 = 0x%08x\n\r",word5);

 		//printf("Word1 = %x \n\r",word1);
 	    for(delay = 0; delay < 9000; delay++)
 	    {
 	      printf(".");
 	    }
 	    printf("\n");
 	}
	return 0;
}
