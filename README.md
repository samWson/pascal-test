# Pascal Test

A unit testing framework for the Object Pascal programming language.

## Usage

Pascal Test is not feature complete or fully automated. It features only basic 
assertions and requires manual setup by the developer. I will be using it for my
own Pascal projects which will drive future development.

'Unit', 'test', and 'unit-test' are words that get used a lot in this repository
and can have different meaning. For clarity 'unit' refers to the Pascal unit (a
module of code) and 'unit-test' (always hiphenated) refers to a function that
tests a discrete unit of code.

`PascalTest.pas` is the test source. It contains:
- `assert()` for booleans
- `assertEqual()` for integers and strings
- `assertInDelta()` for floating point (real) numbers

Assuming you have unit of code that requires testing e.g. `Lib.pas` your tests
will be placed in another unit e.g. `LibTest.pas`. Add the `Lib` and `PascalTest`
units to the `uses` clause. Write procedures using assertions, prefixing the
procedure names with `test`. Write another procedure called `run()` that calls
each unit-test in the unit:

```pascal
unit LibTest;

interface

  uses Lib, PascalTest;
...
implementation

  procedure run();
  begin
    testReturnsTen(); 
    testAddTen();
    testConcatStrings();
    testReturnsOnePointZero();
    firstTest();
    secondTest();
    thirdTest()
  end;

...
end.
```

A Pascal program will run the entire suite of tests by calling `LibTest.run()`
e.g. `TestRunner.pas`:

```pascal
program TestRunner;

uses LibTest;

begin
  Writeln('Begin TestRunner');
  Writeln();

  // Running all of the LibTest unit tests. If we were testing more than
  // one unit then we would have to qualify with the unit name to avoid 
  // conflicts e.g. LibTest.run();
  run();

  Writeln();
  Writeln('All assertions passed');
  Writeln('End')
end.
```
Compile the `TestRunner` program `fpc TestRunner.pas`, then run the program: 
`./TestRunner`.

The naming and file conventions described here are not enforced so you are free to
create your own system.

### Dependancies

Pascal test was built with the [Free Pascal](https://www.freepascal.org/) compiler version 3.2.2.

## Reference

This repository uses the talk on making a [test framework from scratch by
Ryan Davis](https://www.youtube.com/watch?v=VPr5pmlAq20&t=756s) and the related
source for [Microtest](https://github.com/zenspider/microtest) as the starting
point for a test framework for Object Pascal.

## License

This is open source software under the terms of the 3-Clause BSD License
(BSD-3-Clause). See the LICENSE file for detail.
