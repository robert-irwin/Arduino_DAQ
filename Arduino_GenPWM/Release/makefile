################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include w5500src/subdir.mk
-include src/subdir.mk
-include Atmega328Psrc/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LSS += \
Arduino_GenPWM.lss \

FLASH_IMAGE += \
Arduino_GenPWM.hex \

EEPROM_IMAGE += \
Arduino_GenPWM.eep \

SIZEDUMMY += \
sizedummy \


# All Target
all: Arduino_GenPWM.elf secondary-outputs

# Tool invocations
Arduino_GenPWM.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C Linker'
	avr-gcc -Wl,-Map,Arduino_GenPWM.map -mmcu=atmega328p -o "Arduino_GenPWM.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

Arduino_GenPWM.lss: Arduino_GenPWM.elf
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S Arduino_GenPWM.elf  >"Arduino_GenPWM.lss"
	@echo 'Finished building: $@'
	@echo ' '

Arduino_GenPWM.hex: Arduino_GenPWM.elf
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -R .fuse -R .lock -R .signature -O ihex Arduino_GenPWM.elf  "Arduino_GenPWM.hex"
	@echo 'Finished building: $@'
	@echo ' '

Arduino_GenPWM.eep: Arduino_GenPWM.elf
	@echo 'Create eeprom image (ihex format)'
	-avr-objcopy -j .eeprom --no-change-warnings --change-section-lma .eeprom=0 -O ihex Arduino_GenPWM.elf  "Arduino_GenPWM.eep"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: Arduino_GenPWM.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=atmega328p Arduino_GenPWM.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(FLASH_IMAGE)$(ELFS)$(OBJS)$(ASM_DEPS)$(EEPROM_IMAGE)$(S_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(LSS)$(C_DEPS) Arduino_GenPWM.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(EEPROM_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
