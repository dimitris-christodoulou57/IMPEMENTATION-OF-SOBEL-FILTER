################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/inf2015/dchristodoulou/sobel_sw_new.c 

OBJS += \
./source/sobel_sw_new.o 

C_DEPS += \
./source/sobel_sw_new.d 


# Each subdirectory must supply rules for building sources it contributes
source/sobel_sw_new.o: /home/inf2015/dchristodoulou/sobel_sw_new.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -DAESL_TB -D__llvm__ -D__llvm__ -I/opt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/auto_cc/include -I/opt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/systemc/include -I/opt/Xilinx/Vivado_HLS/2017.2/include -I/opt/Xilinx/Vivado_HLS/2017.2/include/etc -I/opt/Xilinx/Vivado_HLS/2017.2/include/ap_sysc -I/home/inf2015/dchristodoulou/CE435 -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


