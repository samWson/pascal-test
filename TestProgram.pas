program TestProgram;

uses Test;

var
  firstTest: string;
  secondTest: string;
  thirdTest: string;
  basicAssert: string;
  assertEqualIntegers: string;
  assertEqualStrings: string;
  assertInDeltaFloats: string;

begin
  Writeln('Begin');

  firstTest := 'firstTest';
  TTest.create().dispatchStr(firstTest);

  secondTest := 'secondTest';
  TTest.create().dispatchStr(secondTest);

  thirdTest := 'thirdTest';
  TTest.create().dispatchStr(thirdTest);

  basicAssert := 'basicAssert';
  TTest.create().dispatchStr(basicAssert);

  assertEqualIntegers := 'assertEqualIntegers';
  TTest.create().dispatchStr(assertEqualIntegers);

  assertEqualStrings := 'assertEqualStrings';
  TTest.create().dispatchStr(assertEqualStrings);

  assertInDeltaFloats := 'assertInDeltaFloats';
  TTest.create().dispatchStr(assertInDeltaFloats);

  Writeln('All assertions passed');
  Writeln('End')
end.

