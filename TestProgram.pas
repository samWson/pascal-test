program TestProgram;

uses Example;

begin
  Writeln('Begin');

  TExampleTest.run();

  Writeln('All assertions passed');
  Writeln('End')
end.

