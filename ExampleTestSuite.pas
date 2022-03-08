program ExampleTestSuite;

uses PascalTest;

var
  actual : Integer;

function addTwo(value: Integer): Integer;
begin
  addTwo := value + 2;
end;

begin
  Writeln('Begin');

  actual := addTwo(10);

  assert(actual = 12);
  assertEqual((10 + 2), 12);
  assertEqual('a' + ' string', 'a string');

  Writeln('All assertions passed');
  Writeln('End')
end.
