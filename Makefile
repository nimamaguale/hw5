VERILOG = iverilog
TARGET = PRNG.vcd
$(TARGET) : PRNG.vvp
	vvp PRNG.vvp
PRNG.vvp: PRNG_tb.v PRNG.v
	$(VERILOG) -o PRNG.vvp PRNG_tb.v PRNG.v
clean:
	-del $(TARGET)
