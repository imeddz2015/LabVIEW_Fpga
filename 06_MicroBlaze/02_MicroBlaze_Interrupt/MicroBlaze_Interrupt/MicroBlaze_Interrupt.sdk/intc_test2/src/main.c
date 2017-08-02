/*
 * main.c
 *
 *  Created on: Jul 24, 2017
 *      Author: John
 */

//#include "xil_types.h"
//#include "xil_assert.h"
//#include "xstatus.h"


#include "xgpio.h"
#include "xil_cache.h"
#include "xintc.h"
#include "xparameters.h"
//#include "xstatus.h"


static XGpio gpi_1;
static XGpio gpo_2;

#define INTC_DEVICE_ID		  XPAR_INTC_0_DEVICE_ID

static XIntc InterruptController; /* Instance of the Interrupt Controller */

void DeviceDriverHandler(void *CallbackRef)
{
	XGpio_DiscreteWrite(&gpo_2, 2, 1099);
}

int Intc_Setup(u16 DeviceId)
{
	int base = 3000;
	int Status;

	/*
	 * Initialize the interrupt controller driver so that it is ready to use.
	 */
	Status = XIntc_Initialize(&InterruptController, DeviceId);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	XGpio_DiscreteWrite(&gpo_2, 2, base + 2);
	// 16, 17 - the application freezes right here
	Status = XIntc_Connect(&InterruptController, XPAR_INTC_0_DEVICE_ID,
					   (XInterruptHandler)DeviceDriverHandler,
					   (void *)0);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	XGpio_DiscreteWrite(&gpo_2, 2, base + 3);
	/*
	 * Start the interrupt controller such that interrupts are enabled for
	 * all devices that cause interrupts, specify simulation mode so that
	 * an interrupt can be caused by software rather than a real hardware
	 * interrupt.
	 */
	Status = XIntc_Start(&InterruptController, XIN_REAL_MODE);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	/*
	 * Enable the interrupt for the device and then cause (simulate) an
	 * interrupt so the handlers will be called.
	 */
	XGpio_DiscreteWrite(&gpo_2, 2, base + 4);
	XIntc_Enable(&InterruptController, DeviceId);


	/*
	 * Initialize the exception table.
	 */
	XGpio_DiscreteWrite(&gpo_2, 2, base + 5);
	Xil_ExceptionInit();

	/*
	 * Register the interrupt controller handler with the exception table.
	 */
	XGpio_DiscreteWrite(&gpo_2, 2, base + 6);
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			(Xil_ExceptionHandler)XIntc_DeviceInterruptHandler,
			(void*) 0);

	/*
	 * Enable exceptions.
	 */
	XGpio_DiscreteWrite(&gpo_2, 2, base + 7);
	Xil_ExceptionEnable();

	XGpio_DiscreteWrite(&gpo_2, 2, base + 8);
	return XST_SUCCESS;

}


int main()
{
	Xil_ICacheEnable();
	Xil_DCacheEnable();

	// Initialize GPI and GPO
	XGpio_Initialize(&gpi_1, XPAR_AXI_GPIO_0_DEVICE_ID);
	XGpio_SetDataDirection(&gpi_1, 1, 0xFFFFFFFF);

	XGpio_Initialize(&gpo_2, XPAR_AXI_GPIO_0_DEVICE_ID);
	XGpio_SetDataDirection(&gpi_1, 2, 0x0);

	XGpio_DiscreteWrite(&gpo_2, 2, 1001);

	int Status;
	Status = Intc_Setup(XPAR_INTC_SINGLE_DEVICE_ID);

	// Write the status to a GPO
	XGpio_DiscreteWrite(&gpo_2, 2, 100 + Status);

	// Read/Write GPI/GPO
	u32 inU32;
	u32 oldU32;
	oldU32 = 0;
	while(1)
	{
		inU32 = XGpio_DiscreteRead(&gpi_1, 1);
		if(oldU32 == 0) {
			oldU32 = inU32;
		}
		if(oldU32 != inU32) {
			XGpio_DiscreteWrite(&gpo_2, 2, inU32 + inU32);
		}
		oldU32 = inU32;
	}

	Xil_ICacheDisable();
	Xil_DCacheDisable();

	return 0;
}
