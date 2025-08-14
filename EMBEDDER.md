**EMBEDDER PROJECT CONTEXT**
<OVERVIEW>
Name            = MyProject
Target MCU      = <chip or family>
Board           = <board>
Toolchain       = <toolchain>
Debug Interface = <st-link|jlink|serial>
RTOS / SDK      = <freertos|zephyr|sdk>
Project Summary = <one-line description>
</OVERVIEW>

<COMMANDS>
# --- Build / Compile --------------------------------------------------------
build_command         = <shell command to build>

# --- Flash ------------------------------------------------------------------
flash_command         = <shell command to flash>

# --- Debug ------------------------------------------------------------------
gdb_server_command    = <optional, e.g., openocd ... or ST-LINK_gdbserver ...>
gdb_server_host       = localhost
gdb_server_port       = 61234
gdb_client_command    = arm-none-eabi-gdb
target_connection     = remote

# --- Serial Monitor ----------------------------------------------------------
# Option 1: For custom commands (waf, make, etc.)
# serial_monitor_command = source .venv/bin/activate && ./waf console --tty /dev/ttyACM0
# serial_monitor_interactive = true
# serial_startup_commands = [reset]

# Option 2: Direct port/baudrate (use {port} and {baud} placeholders)
serial_port = /dev/ttyACM0
serial_baudrate = 115200
serial_monitor_command = tio {port} -b {baud}
serial_monitor_interactive = false
serial_encoding       = ascii
serial_line_endings   = auto
serial_ansi_stripping = smart
serial_binary_detection = true
serial_startup_commands = []
