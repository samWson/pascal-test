program ExampleProgram;

uses
  PascalTest.Assertions;

var
  actual : Integer;

function addTwo(value: Integer): Integer;
begin
  addTwo := value + 2;
end;

begin
  Writeln('Begin');

  actual := addTwo(10);

  assertEqual(actual, 12);

  Writeln('All assertions passed');
  Writeln('End')
end.
