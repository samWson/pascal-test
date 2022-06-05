.PHONY: clean

objects = TestRunner.o Lib.o PascalTest.o LibTest.o
compiled_units = Lib.ppu PascalTest.ppu LibTest.ppu
binaries = TestRunner

clean:
	rm $(objects) $(compiled_units) $(binaries) pascal-test-macos-arm64-0.1.0.zip 

release: PascalTest.pas
	fpc PascalTest.pas
	zip pascal-test-macos-arm64-0.1.0.zip PascalTest.o PascalTest.ppu

test: TestRunner
	./TestRunner

TestRunner: TestRunner.pas Lib.pas LibTest.pas PascalTest.pas
	fpc TestRunner.pas

