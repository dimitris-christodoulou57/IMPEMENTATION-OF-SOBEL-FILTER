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
#include <math.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include <errno.h>
#include "xsdps.h"
#include "ff.h"
#include "xil_io.h"
#include "xil_types.h"
#include "xscutimer.h"
#include <sys/time.h>
#include "xsobel_sw_new.h"
#include "xsobel_sw_new_hw.h"
#include "xparameters.h"
#include "sobel.h"


//timer info
#define TIMER_DEVICE_ID		XPAR_XSCUTIMER_0_DEVICE_ID
#define INTC_DEVICE_ID		XPAR_SCUGIC_SINGLE_DEVICE_ID
#define TIMER_IRPT_INTR		XPAR_SCUTIMER_INTR
#define TIMER_LOAD_VALUE	0xFFFFFFFF
XScuTimer	Timer;

#define SIZE	1024

static char INPUT_FILE[32] = "input.gre";
static char OUTPUT_FILE[32] = "output.gre";
static char GOLDEN_FILE[32] = "golden.gre";
static char *Log_File;

static FIL file1,file2,file3;

unsigned char input[SIZE*SIZE], output[SIZE*SIZE], golden[SIZE*SIZE];


double sobel(unsigned char *input, unsigned char *output, unsigned char *golden);




/* The arrays holding the input image, the output image and the output used *
 * as golden standard. The luminosity (intensity) of each pixel in the      *
 * grayscale image is represented by a value between 0 and 255 (an unsigned *
 * character). The arrays (and the files) contain these values in row-major *
 * order (element after element within each row and row after row. 			*/

/* The main computational function of the program. The input, output and *
 * golden arguments are pointers to the arrays used to store the input   *
 * image, the output produced by the algorithm and the output used as    *
 * golden standard for the comparisons.									 */
double sobel(unsigned char *input, unsigned char *output, unsigned char *golden)
{
	double PSNR = 0, t;
	int i, j;
	int res;


	FRESULT f_in, f_out, f_golden;

	XScuTimer_Config *TMRConfigPtr;     //timer config

	TMRConfigPtr = XScuTimer_LookupConfig(TIMER_DEVICE_ID);
	XScuTimer_CfgInitialize(&Timer, TMRConfigPtr,TMRConfigPtr->BaseAddr);
	XScuTimer_SelfTest(&Timer);
	//load the timer
	XScuTimer_LoadTimer(&Timer, TIMER_LOAD_VALUE);
	int tick;
	/* The first and last row of the output array, as well as the first  *
     * and last element of each column are not going to be filled by the *
     * algorithm, therefore make sure to initialize them with 0s.		 */
	memset(output, 0, SIZE*sizeof(unsigned char));
	memset(&output[SIZE*(SIZE-1)], 0, SIZE*sizeof(unsigned char));
	for (i = 1; i < SIZE-1; i++) {
		output[i*SIZE] = 0;
		output[i*SIZE + SIZE - 1] = 0;
	}

	int zeros=0;

	for(int i=0;i<SIZE*SIZE;i++){
		if(output[i]==0){
			zeros++;
		}
	}

	printf("Output initialy has %d zeros\n",zeros);
	/* Open the input, output, golden files, read the input and golden    *
     * and store them to the corresponding arrays.						  */

	Log_File = (char *)INPUT_FILE;
	f_in = f_open(&file1, Log_File,FA_READ);
	if (f_in!= FR_OK) {
		printf("File  INPUT_FILE  not found\n");
		return XST_FAILURE;
	}
	Log_File = (char *)GOLDEN_FILE;
	f_golden = f_open(&file2, Log_File,FA_READ);
	if (f_golden!= FR_OK) {
		printf("File  GOLDEN_FILE  not found\n");
		return XST_FAILURE;
	}

	Log_File = (char *)OUTPUT_FILE;
	f_out = f_open(&file3, Log_File, FA_CREATE_ALWAYS | FA_WRITE);
	if (f_out!= FR_OK) {
		printf("File  OUTPUT_FILE  not found\n");
		return XST_FAILURE;
	}


	uint readBytes=SIZE*SIZE;
	int off =0;
	f_read(&file1,&input[off],SIZE*SIZE,&readBytes);
	off+=readBytes;
	printf("readbytes = %d\n",readBytes);


	uint readBytes2=SIZE*SIZE;
	off =0;
	f_read(&file2,&golden[off],SIZE*SIZE,&readBytes2);
	off+=readBytes2;

	printf("Just read from golden with start %p\n",&golden[0]);
	printf("Read:%d bytes\n",off);

	f_close(&file1);
	f_close(&file2);

    Xil_DCacheFlush();
    dsb();

    init_sobel(input,output); //init sobel

    printf("Started\n");
    printf("Start timer\r\n");
    XScuTimer_Start(&Timer);

	/* This is the main computation. Get the starting time. */
	/* For each pixel of the output image -----------SOBEL -------------------*/


    sobel_hw(); //run sobel HW

	XScuTimer_Stop(&Timer);
	printf("Ended\n");
	printf("Measure timer\r\n");

	printf("Measured\r\n");

	tick = XScuTimer_GetCounterValue(&Timer);

	printf("Ended with %.6lf secs\r\n",(double)(-1*tick)/XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ);

	/* Now run through the output and the golden output to calculate *
	 * the MSE and then the PSNR.									 */
	for (i=1; i<SIZE-1; i++) {
		for ( j=1; j<SIZE-1; j++ ) {
			t = pow((output[i*SIZE+j] - golden[i*SIZE+j]),2);
			PSNR += t;
		}
	}

	PSNR /= (double)(SIZE*SIZE);
	PSNR = 10*log10(65536/PSNR);
	printf("PSNR:%g\n", PSNR);

	/* This is the end of the main computation. Take the end time,  *
	 * calculate the duration of the computation and report it. 	*/

	/* Write the output file */
	res = f_lseek(&file3, 0);
	if (res!= FR_OK) {
		return XST_FAILURE;
	}
	off =0;
	uint writtenBytes=0;
	while(writtenBytes!=SIZE*SIZE) {
		f_out = f_write(&file3,&output[off],SIZE*SIZE,&writtenBytes);
		if (f_out!=0) {
			xil_printf(" ERROR: f_write2 returned %d\r\n",f_out);
			//return XST_FAILURE;
		}
		off+=writtenBytes;

	}

	if (f_out!=FR_OK) {
			xil_printf(" ERROR: f_write2 returned %d\r\n",f_out);

			return XST_FAILURE;
	}
	off+=writtenBytes;

	printf("Just written to output with start %p\n",&output[0]);
	printf("Written:%d bytes\n",writtenBytes);

	f_close(&file3);

	return PSNR;
}



int main(int argc, char* argv[])
{

    init_platform();

    static FATFS  FS_instance;
    const char *Path = "0:/";
	FRESULT  result;
	result = f_mount(&FS_instance,Path, 0);
	if (result != FR_OK) {
		printf("Cannot mount sd\n");
		return XST_FAILURE;
	}
	printf("Sobel filter start!\n");
	double PSNR;
	PSNR = sobel(input, output, golden);
	printf("PSNR of original Sobel and computed Sobel image: %g\n", PSNR);
	printf("Create the output image with:$convert -depth 8 -size 1024x1024 GRAY:output_sobel.grey output_sobel.jpg\n");
    cleanup_platform();

	return 0;
}




