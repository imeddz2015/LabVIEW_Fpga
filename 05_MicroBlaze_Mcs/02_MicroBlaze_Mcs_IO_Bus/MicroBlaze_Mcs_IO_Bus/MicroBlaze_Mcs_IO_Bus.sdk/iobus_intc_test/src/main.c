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

void host_handler( void )
{
	// Can  we detect which interrupt was raised?
	static int intCount = 100;
	intCount++;
	u32 out_val = 10000 + intCount;
	XIOModule_DiscreteWrite(&gpioOut_2, 2, out_val);

	// Acknowledge Interrupt
	XIOModule_Acknowledge(&gpioOut_2, uintrd);

	// Read size from I/O Bus
	u32 packetLen = 0;
	packetLen = XIOModule_IoReadWord(&gpioOut_2, 0);

	// Read data from I/O Bus
	u32 *packetData;
	int i;
	packetData = (u32 *)malloc(packetLen * sizeof(u32));

	for(i=0; i<packetLen; i++)
	{
		*(packetData+i) = XIOModule_IoReadWord(&gpioOut_2, 0);
	}

	// Write size to GPO2
	XIOModule_DiscreteWrite(&gpioOut_2, 2, packetLen);

	// Write data to I/O Bus

	free(packetData);
}

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
	   // Initialize GPI_1
	   XIOModule gpioIn_1;
	   XIOModule_Initialize(&gpioIn_1, XPAR_IOMODULE_0_DEVICE_ID);
	   XIOModule_Start(&gpioIn_1);

	   // Initialize GPO_1
	   XIOModule gpioOut_1;
	   XIOModule_Initialize(&gpioOut_1, XPAR_IOMODULE_0_DEVICE_ID);
	   XIOModule_Start(&gpioOut_1);

	   // Initialize GPO_3
	   XIOModule gpioOut_3;
	   XIOModule_Initialize(&gpioOut_3, XPAR_IOMODULE_0_DEVICE_ID);
	   XIOModule_Start(&gpioOut_3);

	   // Initialize GPO_2
  	   XIOModule_Initialize(&gpioOut_2, XPAR_IOMODULE_0_DEVICE_ID);
   	   microblaze_register_handler(XIOModule_DeviceInterruptHandler, XPAR_IOMODULE_0_DEVICE_ID);
   	   XIOModule_Start(&gpioOut_2);
	   microblaze_enable_interrupts();
	   if(XST_SUCCESS == XIOModule_Connect(&gpioOut_2, uintrd, (XInterruptHandler)host_handler, XPAR_IOMODULE_0_DEVICE_ID))
	   {
		   XIOModule_DiscreteWrite(&gpioOut_3, 3, 1300);
	   }
	   else
	   {
		   XIOModule_DiscreteWrite(&gpioOut_3, 3, 1301);
	   }
	   XIOModule_Enable(&gpioOut_2, uintrd);

	   // Write a number to make sure we are using the latest version of the bitfile.
	   // I normally use the 24 hour time
	   XIOModule_DiscreteWrite(&gpioOut_1, 1, 1349);
	   XIOModule_DiscreteWrite(&gpioOut_2, 2, 1350);

	   u32 gpi_1;
	   u32 gpi_1_old;
	   gpi_1_old = -1;
	   while(1)
	   {
//		   u32 out_val;
		   gpi_1 = XIOModule_DiscreteRead(&gpioIn_1, 1);
		   if(gpi_1_old == -1)
		   {
			   gpi_1_old = gpi_1;
//			   out_val = gpi_1 + gpi_1;
		   }
		   else
		   {
			   // Only update the value being output by the GPO channel 2
			   // if the value read from GPI channel 1 has changed
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
