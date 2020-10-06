# HDLObf

HDL Obfuscator:

	The original code is retrieved from https://github.com/klyone/HDLObf

Verilog/System-Verilog Grammars:

	https://github.com/antlr/grammars-v4/blob/master/verilog/verilog/Verilog2001.g4
	https://github.com/antlr/grammars-v4/blob/master/verilog/system_verilog/SysVerilogHDL.g4


# To setup Java first

CentOS:

	su -c "yum install -y java-devel"

Ubuntu:

	sudo apt-get install default-jdk


# Run HDLObf

Commands:

	cd ./src

	source ./source_classpath.sh

	java Obfuscate <sv | ver> <INPUT_MAP_FILE> <OUTPUT_MAP_FILE> <VERILOG_FILE> <OBFUSCATED_FILE>"
