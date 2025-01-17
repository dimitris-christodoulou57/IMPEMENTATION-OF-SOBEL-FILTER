 #include <stdio.h>
#include "xil_types.h"
#include "xsobel_sw_new.h"
#include "xsobel_sw_new_hw.h"
#include "xparameters.h"

	XSobel_sw_new InstancePtr;
	XSobel_sw_new InstancePtr1;
	XSobel_sw_new InstancePtr2;
	XSobel_sw_new InstancePtr3;
 
 void init_sobel(){
     
     
	XSobel_sw_new_Config Sbl_CONF = {0,XPAR_SOBEL_SW_NEW_0_S_AXI_CTRL_BUS_BASEADDR};
	XSobel_sw_new_Config Sbl_CONF1 = {0,XPAR_SOBEL_SW_NEW_1_S_AXI_CTRL_BUS_BASEADDR};
	XSobel_sw_new_Config Sbl_CONF2 = {0,XPAR_SOBEL_SW_NEW_2_S_AXI_CTRL_BUS_BASEADDR};
	XSobel_sw_new_Config Sbl_CONF3 = {0,XPAR_SOBEL_SW_NEW_3_S_AXI_CTRL_BUS_BASEADDR};

		//init first sobel component
		XSobel_sw_new_CfgInitialize(&InstancePtr, &Sbl_CONF);
	    XSobel_sw_new_InterruptGlobalDisable(&InstancePtr);
	    XSobel_sw_new_InterruptDisable(&InstancePtr, 1);

	    XSobel_sw_new_Set_input_r_r(&InstancePtr, (u32)input);
	    XSobel_sw_new_Set_output_r_r(&InstancePtr, (u32)output);
	    //init secon sobel component
	    XSobel_sw_new_CfgInitialize(&InstancePtr1, &Sbl_CONF1);
	    XSobel_sw_new_InterruptGlobalDisable(&InstancePtr1);
	    XSobel_sw_new_InterruptDisable(&InstancePtr1, 1);

	    XSobel_sw_new_Set_input_r_r(&InstancePtr1, (u32)(input+(SIZE*256)));
	    XSobel_sw_new_Set_output_r_r(&InstancePtr1, (u32)(output+(SIZE*256)));
	    //init third sobel component
	    XSobel_sw_new_CfgInitialize(&InstancePtr2, &Sbl_CONF2);
	    XSobel_sw_new_InterruptGlobalDisable(&InstancePtr2);
	    XSobel_sw_new_InterruptDisable(&InstancePtr2, 1);

	    XSobel_sw_new_Set_input_r_r(&InstancePtr2, (u32)(input+(SIZE*512)));
	    XSobel_sw_new_Set_output_r_r(&InstancePtr2, (u32)(output+(SIZE*512)));

	    //init forth sobel component
	    XSobel_sw_new_CfgInitialize(&InstancePtr3, &Sbl_CONF3);
	    XSobel_sw_new_InterruptGlobalDisable(&InstancePtr3);
	    XSobel_sw_new_InterruptDisable(&InstancePtr3, 1);

	    XSobel_sw_new_Set_input_r_r(&InstancePtr3, (u32)(input+(SIZE*766)));
	    XSobel_sw_new_Set_output_r_r(&InstancePtr3, (u32)(output+(SIZE*766)));


}
void sobel_hw(){
    XSobel_sw_new_Start(&InstancePtr); //start first sobel
    XSobel_sw_new_Start(&InstancePtr1);//start second sobel
    XSobel_sw_new_Start(&InstancePtr2);//start third sobel
    XSobel_sw_new_Start(&InstancePtr3);//start forth sobel

    while(!XSobel_sw_new_IsDone(&InstancePtr)){
    }

    while(!XSobel_sw_new_IsDone(&InstancePtr1)){
    }

    while(!XSobel_sw_new_IsDone(&InstancePtr2)){
    }

    while(!XSobel_sw_new_IsDone(&InstancePtr3)){
    }

}
