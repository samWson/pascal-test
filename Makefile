.PHONY: clean

objects = TestProgram.o PascalTest.o
compiled_units = PascalTest.ppu
binaries = TestProgram

clean:
	rm $(objects) $(compiled_units) $(binaries)

examples: TestProgram

TestProgram: TestProgram.pas PascalTest.ppu
	fpc TestProgram.pas

PascalTest.ppu: PascalTest.pas
	fpc PascalTest.pas

