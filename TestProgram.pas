program TestProgram;

uses PascalTest, Example;

begin
  Writeln('Begin TestProgram');

  // TExampleTest.run();
  TTestCase.runAllTests();

  Writeln('All assertions passed');
  Writeln('End')
end.

