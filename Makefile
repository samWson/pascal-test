.PHONY: clean

objects = ExampleTestSuite.o PascalTest.o
compiled_units = PascalTest.ppu
binaries = ExampleTestSuite

clean:
	rm $(objects) $(compiled_units) $(binaries)

examples: ExampleTestSuite

ExampleTestSuite: ExampleTestSuite.pas PascalTest.ppu
	fpc ExampleTestSuite.pas

PascalTest.ppu: PascalTest.pas
	fpc PascalTest.pas

