################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Users/robertirwin/Documents/MyC_HeaderFiles/AtMega328P/src/AtMega328P_SPI.c \
/Users/robertirwin/Documents/MyC_HeaderFiles/AtMega328P/src/AtMega328P_UART.c 

OBJS += \
./Atmega328P/AtMega328P_SPI.o \
./Atmega328P/AtMega328P_UART.o 

C_DEPS += \
./Atmega328P/AtMega328P_SPI.d \
./Atmega328P/AtMega328P_UART.d 


# Each subdirectory must supply rules for building sources it contributes
Atmega328P/AtMega328P_SPI.o: /Users/robertirwin/Documents/MyC_HeaderFiles/AtMega328P/src/AtMega328P_SPI.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I/Users/robertirwin/Documents/MyC_HeaderFiles/AtMega328P/AtMega328P -I/Users/robertirwin/Documents/MyC_HeaderFiles/W5500/W5500 -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Atmega328P/AtMega328P_UART.o: /Users/robertirwin/Documents/MyC_HeaderFiles/AtMega328P/src/AtMega328P_UART.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I/Users/robertirwin/Documents/MyC_HeaderFiles/AtMega328P/AtMega328P -I/Users/robertirwin/Documents/MyC_HeaderFiles/W5500/W5500 -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


