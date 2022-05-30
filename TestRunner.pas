program TestRunner;

  // This program is our test runner. It is the program that is executed to run
  // all the test cases in a repository.
  // A test case is a unit analogous to a minitest TestCase.

  {$LONGSTRINGS ON}
  {$MODE OBJFPC}

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

