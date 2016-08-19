################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Users/robertirwin/Documents/MyC_HeaderFiles/W5500/src/w5500.c 

OBJS += \
./w5500/w5500.o 

C_DEPS += \
./w5500/w5500.d 


# Each subdirectory must supply rules for building sources it contributes
w5500/w5500.o: /Users/robertirwin/Documents/MyC_HeaderFiles/W5500/src/w5500.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I/Users/robertirwin/Documents/MyC_HeaderFiles/AtMega328P/AtMega328P -I/Users/robertirwin/Documents/MyC_HeaderFiles/W5500/W5500 -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


