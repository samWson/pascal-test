unit PascalTest;

  {$LONGSTRINGS ON}
  {$MODE OBJFPC}

interface

  procedure assert(test: boolean);
  generic procedure assertEqual<T>(actual, expected: T);

implementation

  uses sysutils;

  procedure assert(test: boolean);
  begin
    if not test then
      raise Exception.create('Failed test');
  end;

  generic procedure assertEqual<T>(actual, expected: T);
  begin
    assert(actual = expected);
  end;

end.
