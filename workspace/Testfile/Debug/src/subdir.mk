################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../src/stdio.s \
../src/testfile.s 

C_SRCS += \
../src/syscalls.c \
../src/system_stm32f0xx.c 

OBJS += \
./src/stdio.o \
./src/syscalls.o \
./src/system_stm32f0xx.o \
./src/testfile.o 

C_DEPS += \
./src/syscalls.d \
./src/system_stm32f0xx.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	@echo $(PWD)
	arm-none-eabi-as -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -I"D:/School/ECE 36200/workspace/Testfile/StdPeriph_Driver/inc" -I"D:/School/ECE 36200/workspace/Testfile/inc" -I"D:/School/ECE 36200/workspace/Testfile/CMSIS/device" -I"D:/School/ECE 36200/workspace/Testfile/CMSIS/core" -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -DSTM32 -DSTM32F0 -DSTM32F091RCTx -DDEBUG -DSTM32F091 -DUSE_STDPERIPH_DRIVER -I"D:/School/ECE 36200/workspace/Testfile/StdPeriph_Driver/inc" -I"D:/School/ECE 36200/workspace/Testfile/inc" -I"D:/School/ECE 36200/workspace/Testfile/CMSIS/device" -I"D:/School/ECE 36200/workspace/Testfile/CMSIS/core" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


