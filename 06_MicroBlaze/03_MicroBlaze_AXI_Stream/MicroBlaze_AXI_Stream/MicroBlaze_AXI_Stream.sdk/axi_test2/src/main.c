/*
 * main.c
 *
 *  Created on: Sep 11, 2017
 *      Author: John
 */

#include <stdio.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xgpio.h"
#include "xllfifo.h"

#define MAX_FRAME_SIZE 1506
#define WORD_SIZE 4

static XGpio GpioInput;
static XGpio GpioOutput;

static XLlFifo FifoInstance;

int main()
{
	// Initialize GPIO Channel 1 and 2
	{
		XGpio_Initialize(&GpioInput, XPAR_AXI_GPIO_0_DEVICE_ID);
		XGpio_SetDataDirection(&GpioInput, 1, 0xFFFFFFFF); /* 0xFFFFFFFF means input */

		XGpio_Initialize(&GpioOutput, XPAR_AXI_GPIO_0_DEVICE_ID);
		XGpio_SetDataDirection(&GpioOutput, 2, 0x0); /* 0 means output */
	}
	XGpio_DiscreteWrite(&GpioOutput, 2, 0x100);

	// Initialize FIFO
	int Status;
	XLlFifo_Config *Config;
	Status = XST_SUCCESS;

	// Initialize FIFO
	XGpio_DiscreteWrite(&GpioOutput, 2, 0x1);
	Config = XLlFfio_LookupConfig(XPAR_AXI_FIFO_0_DEVICE_ID);
	if (!Config)
	{
		XGpio_DiscreteWrite(&GpioOutput, 2, 0x2);
		return XST_FAILURE;
	}
	Status = XLlFifo_CfgInitialize(&FifoInstance, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS)
	{
		XGpio_DiscreteWrite(&GpioOutput, 2, 0x3);
		return XST_FAILURE;
	}

	// Main Loop
	int i;
	u32 ReceiveLength;
	u32 RxWord;
	char buffer[MAX_FRAME_SIZE];

	XGpio_DiscreteWrite(&GpioOutput, 2, 0x200);
	while(1)
	{
		XGpio_DiscreteWrite(&GpioOutput, 2, 0x201);
		if( XLlFifo_RxOccupancy(&FifoInstance) )
		{
//			ReceiveLength = (XLlFifo_RxGetLen(&FifoInstance))/WORD_SIZE;
			ReceiveLength = (XLlFifo_iRxGetLen(&FifoInstance))/WORD_SIZE;
			XGpio_DiscreteWrite(&GpioOutput, 2, 0x202);
			XGpio_DiscreteWrite(&GpioOutput, 2, ReceiveLength);
			XGpio_DiscreteWrite(&GpioOutput, 2, 0x203);
			if(ReceiveLength > 0)
			{
				XGpio_DiscreteWrite(&GpioOutput, 2, 0x204);

				// Receive entire buffer amount
				XLlFifo_Read(&FifoInstance, buffer, ReceiveLength);
				XGpio_DiscreteWrite(&GpioOutput, 2, 0x210 + ReceiveLength);
				XGpio_DiscreteWrite(&GpioOutput, 2, buffer[0]);
				XGpio_DiscreteWrite(&GpioOutput, 2, buffer[1]);
				XGpio_DiscreteWrite(&GpioOutput, 2, buffer[2]);
				XGpio_DiscreteWrite(&GpioOutput, 2, buffer[3]);
			}
			XGpio_DiscreteWrite(&GpioOutput, 2, 0x220);
		}
		//XGpio_DiscreteWrite(&GpioOutput, 2, 0x230);
	}

	return 0;
}
