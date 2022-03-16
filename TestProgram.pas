program TestProgram;

uses Test;

begin
  Writeln('Begin');

  TTest.run();

  Writeln('All assertions passed');
  Writeln('End')
end.

