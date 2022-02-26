.PHONY: clean

PascalTest: PascalTest.pas
	fpc PascalTest

run: PascalTest
	./PascalTest

clean:
	rm PascalTest PascalTest.o
