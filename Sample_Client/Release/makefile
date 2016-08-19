################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include w5500/subdir.mk
-include src/subdir.mk
-include Atmega328P/subdir.mk
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
Sample_Client.lss \

FLASH_IMAGE += \
Sample_Client.hex \

EEPROM_IMAGE += \
Sample_Client.eep \

SIZEDUMMY += \
sizedummy \


# All Target
all: Sample_Client.elf secondary-outputs

# Tool invocations
Sample_Client.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C Linker'
	avr-gcc -Wl,-Map,Sample_Client.map -mmcu=atmega328p -o "Sample_Client.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

Sample_Client.lss: Sample_Client.elf
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S Sample_Client.elf  >"Sample_Client.lss"
	@echo 'Finished building: $@'
	@echo ' '

Sample_Client.hex: Sample_Client.elf
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -R .fuse -R .lock -R .signature -O ihex Sample_Client.elf  "Sample_Client.hex"
	@echo 'Finished building: $@'
	@echo ' '

Sample_Client.eep: Sample_Client.elf
	@echo 'Create eeprom image (ihex format)'
	-avr-objcopy -j .eeprom --no-change-warnings --change-section-lma .eeprom=0 -O ihex Sample_Client.elf  "Sample_Client.eep"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: Sample_Client.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=atmega328p Sample_Client.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(FLASH_IMAGE)$(ELFS)$(OBJS)$(ASM_DEPS)$(EEPROM_IMAGE)$(S_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(LSS)$(C_DEPS) Sample_Client.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(EEPROM_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
