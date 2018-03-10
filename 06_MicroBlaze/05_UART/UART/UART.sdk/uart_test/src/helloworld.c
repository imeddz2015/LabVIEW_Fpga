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

#include <stdio.h>

#include "xparameters.h"
#include "xil_cache.h"
#include "xgpio.h"

int main()
{
	Xil_ICacheEnable();
	Xil_DCacheEnable();

	static XGpio gpio;

	// Initialize GPIO Channel 1 and 2
	{
		XGpio_Initialize(&gpio, XPAR_AXI_GPIO_0_DEVICE_ID);
		XGpio_SetDataDirection(&gpio, 1, 0xFFFFFFFF); /* 0xFFFFFFFF means input */

		XGpio_Initialize(&gpio, XPAR_AXI_GPIO_0_DEVICE_ID);
		XGpio_SetDataDirection(&gpio, 2, 0x0); /* 0 means output */
	}
	XGpio_DiscreteWrite(&gpio, 2, 0x100);

	print("Hello World from UART Test!\r\n");

	XGpio_DiscreteWrite(&gpio, 2, 0x103);

	unsigned int last_0 = 0;
	while(1)
	{
		// Check GPIO #1
		XGpio_DiscreteWrite(&gpio, 2, 0x303);

		unsigned int gpi_val_0 = XGpio_DiscreteRead(&gpio, 1);
		if(gpi_val_0 != last_0)
		{
			printf("Old Value: %u, New Value: %u\r\n", last_0, gpi_val_0);

			last_0 = gpi_val_0;
			XGpio_DiscreteWrite(&gpio, 2, (last_0 + last_0));
		}
	}

	print("---Exiting main---\n\r");
	Xil_DCacheDisable();
	Xil_ICacheDisable();

	return 0;
}
