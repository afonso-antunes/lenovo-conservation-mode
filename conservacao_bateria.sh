#!/bin/bash

# Verifica o estado atual do modo de conservação
conservation_mode=$(cat /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode)

if [ "$conservation_mode" -eq 0 ]; then
	sudo bash -c 'echo 1 > /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode'
	echo "Modo poupança de bateria ligado (60%)"
else
	sudo bash -c 'echo 0 > /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode'
	echo "Modo poupança de bateria desligado (100%)"
fi
