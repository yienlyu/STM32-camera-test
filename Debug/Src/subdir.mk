################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/main.c \
../Src/stm32l4xx_hal_msp.c \
../Src/stm32l4xx_it.c \
../Src/syscalls.c \
../Src/sysmem.c \
../Src/system_stm32l4xx.c 

OBJS += \
./Src/main.o \
./Src/stm32l4xx_hal_msp.o \
./Src/stm32l4xx_it.o \
./Src/syscalls.o \
./Src/sysmem.o \
./Src/system_stm32l4xx.o 

C_DEPS += \
./Src/main.d \
./Src/stm32l4xx_hal_msp.d \
./Src/stm32l4xx_it.d \
./Src/syscalls.d \
./Src/sysmem.d \
./Src/system_stm32l4xx.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32L496xx -DUSE_HAL_DRIVER -DSTM32 -DSTM32L4 -DSTM32L496AGIx -DSTM32L496G_DISCO -c -I../Inc -I"/Users/natalielyu/STM32CubeIDE/workspace_1.8.0/STM32-camera-test/Drivers/STM32L4xx_HAL_Driver/Inc" -I"/Users/natalielyu/STM32CubeIDE/workspace_1.8.0/STM32-camera-test/Drivers/CMSIS/Device/ST/STM32L4xx/Include" -I"/Users/natalielyu/STM32CubeIDE/workspace_1.8.0/STM32-camera-test/Drivers/CMSIS/Include" -I"/Users/natalielyu/STM32CubeIDE/workspace_1.8.0/STM32-camera-test/Drivers/BSP" -I"/Users/natalielyu/STM32CubeIDE/workspace_1.8.0/STM32-camera-test/Drivers/STM32L4xx_HAL_Driver/Inc/Legacy" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/main.d ./Src/main.o ./Src/stm32l4xx_hal_msp.d ./Src/stm32l4xx_hal_msp.o ./Src/stm32l4xx_it.d ./Src/stm32l4xx_it.o ./Src/syscalls.d ./Src/syscalls.o ./Src/sysmem.d ./Src/sysmem.o ./Src/system_stm32l4xx.d ./Src/system_stm32l4xx.o

.PHONY: clean-Src

