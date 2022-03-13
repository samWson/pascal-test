.PHONY: clean

objects = TestProgram.o PascalTest.o Test.o
compiled_units = PascalTest.ppu Test.ppu
binaries = TestProgram

clean:
	rm $(objects) $(compiled_units) $(binaries)

examples: TestProgram

TestProgram: TestProgram.pas Test.pas
	fpc TestProgram.pas

