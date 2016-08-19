################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/AtMega328P_SPI.c \
../src/AtMega328P_UART.c \
../src/CircularBuff.c \
../src/DiscreteRMS.c \
../src/main.c \
../src/w5500.c 

OBJS += \
./src/AtMega328P_SPI.o \
./src/AtMega328P_UART.o \
./src/CircularBuff.o \
./src/DiscreteRMS.o \
./src/main.o \
./src/w5500.o 

C_DEPS += \
./src/AtMega328P_SPI.d \
./src/AtMega328P_UART.d \
./src/CircularBuff.d \
./src/DiscreteRMS.d \
./src/main.d \
./src/w5500.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I/usr/local/Cellar/avr-libc/1.8.1/avr/include -I/Users/robertirwin/Documents/MyC_HeaderFiles/AtMega328P/AtMega328P -I/Users/robertirwin/Documents/MyC_HeaderFiles/W5500/W5500 -I/Users/robertirwin/Documents/MyC_HeaderFiles/CircularBuff/CircularBuff -I/Users/robertirwin/Documents/MyC_HeaderFiles/DiscreteRMS/DiscreteRMS -Wall -Os -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


