################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
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
Arduino_DAQ.lss \

FLASH_IMAGE += \
Arduino_DAQ.hex \

EEPROM_IMAGE += \
Arduino_DAQ.eep \

SIZEDUMMY += \
sizedummy \


# All Target
all: Arduino_DAQ.elf secondary-outputs

# Tool invocations
Arduino_DAQ.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C Linker'
	avr-gcc -Wl,-Map,Arduino_DAQ.map -mmcu=atmega328p -o "Arduino_DAQ.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

Arduino_DAQ.lss: Arduino_DAQ.elf
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S Arduino_DAQ.elf  >"Arduino_DAQ.lss"
	@echo 'Finished building: $@'
	@echo ' '

Arduino_DAQ.hex: Arduino_DAQ.elf
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -R .fuse -R .lock -R .signature -O ihex Arduino_DAQ.elf  "Arduino_DAQ.hex"
	@echo 'Finished building: $@'
	@echo ' '

Arduino_DAQ.eep: Arduino_DAQ.elf
	@echo 'Create eeprom image (ihex format)'
	-avr-objcopy -j .eeprom --no-change-warnings --change-section-lma .eeprom=0 -O ihex Arduino_DAQ.elf  "Arduino_DAQ.eep"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: Arduino_DAQ.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=atmega328p Arduino_DAQ.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(FLASH_IMAGE)$(ELFS)$(OBJS)$(ASM_DEPS)$(EEPROM_IMAGE)$(S_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(LSS)$(C_DEPS) Arduino_DAQ.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(EEPROM_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
