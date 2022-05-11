################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/mfxstm32l152.c \
../Drivers/BSP/ov5640.c \
../Drivers/BSP/ov5640_reg.c \
../Drivers/BSP/ov9655.c \
../Drivers/BSP/ov9655_reg.c \
../Drivers/BSP/stm32_ov5640_camera.c \
../Drivers/BSP/stm32l496g_discovery.c \
../Drivers/BSP/stm32l496g_discovery_io.c 

OBJS += \
./Drivers/BSP/mfxstm32l152.o \
./Drivers/BSP/ov5640.o \
./Drivers/BSP/ov5640_reg.o \
./Drivers/BSP/ov9655.o \
./Drivers/BSP/ov9655_reg.o \
./Drivers/BSP/stm32_ov5640_camera.o \
./Drivers/BSP/stm32l496g_discovery.o \
./Drivers/BSP/stm32l496g_discovery_io.o 

C_DEPS += \
./Drivers/BSP/mfxstm32l152.d \
./Drivers/BSP/ov5640.d \
./Drivers/BSP/ov5640_reg.d \
./Drivers/BSP/ov9655.d \
./Drivers/BSP/ov9655_reg.d \
./Drivers/BSP/stm32_ov5640_camera.d \
./Drivers/BSP/stm32l496g_discovery.d \
./Drivers/BSP/stm32l496g_discovery_io.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/%.o: ../Drivers/BSP/%.c Drivers/BSP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32L496xx -DUSE_HAL_DRIVER -DSTM32 -DSTM32L4 -DSTM32L496AGIx -DSTM32L496G_DISCO -c -I../Inc -I"/Users/natalielyu/STM32CubeIDE/workspace_1.8.0/STM32-camera-test/Drivers/STM32L4xx_HAL_Driver/Inc" -I"/Users/natalielyu/STM32CubeIDE/workspace_1.8.0/STM32-camera-test/Drivers/CMSIS/Device/ST/STM32L4xx/Include" -I"/Users/natalielyu/STM32CubeIDE/workspace_1.8.0/STM32-camera-test/Drivers/CMSIS/Include" -I"/Users/natalielyu/STM32CubeIDE/workspace_1.8.0/STM32-camera-test/Drivers/BSP" -I"/Users/natalielyu/STM32CubeIDE/workspace_1.8.0/STM32-camera-test/Drivers/STM32L4xx_HAL_Driver/Inc/Legacy" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP

clean-Drivers-2f-BSP:
	-$(RM) ./Drivers/BSP/mfxstm32l152.d ./Drivers/BSP/mfxstm32l152.o ./Drivers/BSP/ov5640.d ./Drivers/BSP/ov5640.o ./Drivers/BSP/ov5640_reg.d ./Drivers/BSP/ov5640_reg.o ./Drivers/BSP/ov9655.d ./Drivers/BSP/ov9655.o ./Drivers/BSP/ov9655_reg.d ./Drivers/BSP/ov9655_reg.o ./Drivers/BSP/stm32_ov5640_camera.d ./Drivers/BSP/stm32_ov5640_camera.o ./Drivers/BSP/stm32l496g_discovery.d ./Drivers/BSP/stm32l496g_discovery.o ./Drivers/BSP/stm32l496g_discovery_io.d ./Drivers/BSP/stm32l496g_discovery_io.o

.PHONY: clean-Drivers-2f-BSP

