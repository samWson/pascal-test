unit PascalTest.Assertions;

interface

  procedure assertEqual(actual, expected: Integer);

implementation

  procedure assertEqual(actual, expected: Integer);
  begin
    assert(actual = expected);
  end;

end.
