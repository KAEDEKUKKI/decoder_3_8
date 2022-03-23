VERIOG = iverilog
TARGET = decoder.vcd

$(TARGET) : decoder.vvp
	vvp decoder.vvp

decoder.vvp: decoder_tb.v decoder.v
	$(VERIOG) -o decoder.vvp decoder_tb.v decoder.v

clean:
	rm $(TARGET)
