# lenovo-conservation-mode

A simple Bash script to toggle Lenovo's battery conservation mode on Linux.

Battery conservation mode limits the maximum charge to 60%, which can help preserve battery health by reducing charge cycles — ideal if you often use your laptop plugged in.

This script allows you to quickly enable or disable this feature from the command line.

---

## Compatibility

This script is intended for Lenovo laptops that expose the `conservation_mode` control file through the `ideapad_acpi` driver.

It has been tested and confirmed working on:

- **Lenovo Legion Y540** (Model: 81SY)
  - Kernel: `6.11.0-21-generic`
  - Note: Although `ideapad_acpi` is not listed in `lsmod`, the `/sys/.../conservation_mode` file exists and works.

It should also work on many **IdeaPad** models and some **Yoga** or **ThinkPad** models, depending on firmware.

To check compatibility on your system:

```bash
ls /sys/bus/platform/drivers/ideapad_acpi/*/conservation_mode #If the file exists, your system is compatible.
```
---
## Installation and usage

```bash
git clone https://github.com/yourusername/lenovo-conservation-mode.git
cd lenovo-conservation-mode
chmod +x toggle_conservation_mode.sh
./toggle_conservation_mode.sh
```

The script checks the current state and toggles accordingly:

- If conservation mode is off (battery charges to 100%), it will enable it (limit to 60%)

- If conservation mode is on, it will disable it (allow full charge)
