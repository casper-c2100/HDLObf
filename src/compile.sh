#! /bin/bash

SYSVERILOG_GRAMMAR="SysVerilogHDL.g4"
VERILOG_GRAMMAR="Verilog2001.g4"
VHDL_GRAMMAR="vhdl.g4"

source ./source_classpath.sh

if [ ! -d "../bin" ] ; then
	mkdir ../bin
fi

(java org.antlr.v4.Tool -o ./generated ${SYSVERILOG_GRAMMAR} > ../log/SystemVerilogLexer_OutputLog.dat)  >& ../log/SystemVerilogLexer_ErrorLog.dat
(java org.antlr.v4.Tool -o ./generated ${VERILOG_GRAMMAR} > ../log/VerilogLexer_OutputLog.dat)  >& ../log/VerilogLexer_ErrorLog.dat
(java org.antlr.v4.Tool -o ./generated ${VHDL_GRAMMAR} > ../log/VHDLLexer_OutputLog.dat)  >& ../log/VHDLLexer_ErrorLog.dat
(javac -d ../bin  ./generated/*.java *.java ) >& ../log/JavacErrorLog.dat

echo
cat ../log/JavacErrorLog.dat
echo
