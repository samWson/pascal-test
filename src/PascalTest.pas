program PascalTest;

uses
  PascalTest.Assertions;

var
  actual : Integer;

function addTwo(value: Integer): Integer;
begin
  addTwo := value + 2;
end;

begin
  actual := addTwo(10);

  assertEqual(actual, 12);

  assert('hello' = 'hell');

  Writeln('All assertions passed')
end.

