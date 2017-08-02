/*
 * main.c
 *
 *  Created on: Jun 27, 2017
 *      Author: John
 */

#include "xparameters.h"
#include "xil_cache.h"
#include "xiomodule.h"

static XIOModule gpioOut_2;
u8 uintrd = 16 + XPAR_IOMODULE_0_SYSTEM_INTC_INTERRUPT_1_INTR;

void myISR_1( void )
{
	static int intCount = 100;
	intCount++;
	u32 out_val = (intCount * 100) + 3;
	XIOModule_DiscreteWrite(&gpioOut_2, 2, out_val);
	XIOModule_Acknowledge(&gpioOut_2, uintrd);
}

int main()
{
   Xil_ICacheEnable();
   Xil_DCacheEnable();

   print("---Entering main---\n\r");
   {
	   XIOModule gpioIn_1;
	   XIOModule_Initialize(&gpioIn_1, XPAR_IOMODULE_0_DEVICE_ID);
	   XIOModule_Start(&gpioIn_1);

	   XIOModule gpioOut_1;
	   XIOModule_Initialize(&gpioOut_1, XPAR_IOMODULE_0_DEVICE_ID);
	   XIOModule_Start(&gpioOut_1);

	   XIOModule gpioOut_3;
	   XIOModule_Initialize(&gpioOut_3, XPAR_IOMODULE_0_DEVICE_ID);
	   XIOModule_Start(&gpioOut_3);

  	   XIOModule_Initialize(&gpioOut_2, XPAR_IOMODULE_0_DEVICE_ID);
   	   microblaze_register_handler(XIOModule_DeviceInterruptHandler, XPAR_IOMODULE_0_DEVICE_ID);
   	   XIOModule_Start(&gpioOut_2);
	   microblaze_enable_interrupts();
	   if(XST_SUCCESS == XIOModule_Connect(&gpioOut_2, uintrd, myISR_1, XPAR_IOMODULE_0_DEVICE_ID))
	   {
		   XIOModule_DiscreteWrite(&gpioOut_3, 3, 4301);
	   }
	   else
	   {
		   XIOModule_DiscreteWrite(&gpioOut_3, 3, 4302);
	   }
	   XIOModule_Enable(&gpioOut_2, uintrd);

	   XIOModule_DiscreteWrite(&gpioOut_1, 1, 536);
	   XIOModule_DiscreteWrite(&gpioOut_2, 2, 536);

	   u32 gpi_1;
	   u32 gpi_1_old;
	   gpi_1_old = -1;
	   while(1)
	   {
		   u32 out_val;
		   gpi_1 = XIOModule_DiscreteRead(&gpioIn_1, 1);
		   if(gpi_1_old == -1)
		   {
			   gpi_1_old = gpi_1;
			   out_val = gpi_1 + gpi_1;
		   }
		   else
		   {
			   if(gpi_1_old != gpi_1)
			   {
				   XIOModule_DiscreteWrite(&gpioOut_1, 2, 1);
			   }
			   gpi_1_old = gpi_1;
		   }
		   XIOModule_DiscreteWrite(&gpioOut_1, 1, gpi_1 + gpi_1);
	   }
   }

   print("---Exiting main---\n\r");
   Xil_DCacheDisable();
   Xil_ICacheDisable();
   return 0;
}
