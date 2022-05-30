unit Lib;

  // Lib is an example of a unit that has some functions we want to test. The
  // unit LibTest contains the unit-tests for these functions.

  {$LONGSTRINGS ON}
  {$MODE OBJFPC}

interface

  function addTen(value: integer): integer;
  function concatStrings(first, second: string): string;
  function returnsOnePointZero(): real;
  function returnsTen(): integer;

implementation

  function addTen(value: integer): integer;
  begin
    Result := value + 10
  end;

  function concatStrings(first, second: string): string;
  begin
    Result := first + second
  end;

  function returnsOnePointZero(): real;
  begin
    Result := 1.0
  end;

  function returnsTen(): integer;
  begin
    Result := 10
  end;
end.