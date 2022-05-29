.PHONY: clean

objects = TestRunner.o PascalTest.o ExampleTestCase.o
compiled_units = PascalTest.ppu ExampleTestCase.ppu
binaries = TestRunner

clean:
	rm $(objects) $(compiled_units) $(binaries)

examples: TestRunner

TestRunner: TestRunner.pas ExampleTestCase.pas PascalTest.pas
	fpc TestRunner.pas

