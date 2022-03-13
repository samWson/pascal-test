program TestProgram;

uses Test;

begin
  Writeln('Begin');

  TTest.create().run('firstTest');
  TTest.create().run('secondTest');
  TTest.create().run('thirdTest');
  TTest.create().run('basicAssert');
  TTest.create().run('assertEqualIntegers');
  TTest.create().run('assertEqualStrings');
  TTest.create().run('assertInDeltaFloats');

  Writeln('All assertions passed');
  Writeln('End')
end.

