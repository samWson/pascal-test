.PHONY: clean

objects = ExampleProgram.o PascalTest.Assertions.o
compiled_units = PascalTest.Assertions.ppu
binaries = ExampleProgram

clean:
	rm $(objects) $(compiled_units) $(binaries)

examples: ExampleProgram

ExampleProgram: ExampleProgram.pas PascalTest.Assertions.ppu
	fpc ExampleProgram.pas

PascalTest.Assertions.ppu:
	fpc PascalTest.Assertions.pas

