.PHONY: clean

objects = TestRunner.o Lib.o PascalTest.o LibTest.o
compiled_units = Lib.ppu PascalTest.ppu LibTest.ppu
binaries = TestRunner

clean:
	rm $(objects) $(compiled_units) $(binaries)

test: TestRunner
	./TestRunner

TestRunner: TestRunner.pas LibTest.pas PascalTest.pas
	fpc TestRunner.pas

