.PHONY: clean

objects = TestProgram.o PascalTest.o Example.o
compiled_units = PascalTest.ppu Example.ppu
binaries = TestProgram

clean:
	rm $(objects) $(compiled_units) $(binaries)

examples: TestProgram

TestProgram: TestProgram.pas Example.pas PascalTest.pas
	fpc TestProgram.pas

