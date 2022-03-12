program TestProgram;

uses Test;

begin
  Writeln('Begin');

  TTest.create().firstTest();
  TTest.create().secondTest();
  TTest.create().thirdTest();
  TTest.create().basicAssert();
  TTest.create().assertEqualIntegers();
  TTest.create().assertEqualStrings();
  TTest.create().assertInDeltaFloats();

  Writeln('All assertions passed');
  Writeln('End')
end.

