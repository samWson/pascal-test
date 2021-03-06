unit PascalTest;

  {$LONGSTRINGS ON}
  {$MODE OBJFPC}

interface

  procedure assert(test: boolean; message: string = 'Failed Test');
  procedure assertEqual(actual, expected: integer);
  procedure assertEqual(actual, expected: string);
  procedure assertInDelta(actual, expected: real);

  const
    version = '0.1.0';

implementation

  uses SysUtils;

  procedure assert(test: boolean; message: string = 'Failed Test');
  begin
    if not test then
      raise Exception.create(message);
  end;

  procedure assertEqual(actual, expected: integer);
  begin
    assert(actual = expected, format('Failed assertEqual %d vs %d', [actual, expected]))
  end;

  procedure assertEqual(actual, expected: string);
  begin
    assert(actual = expected, format('Failed assertEqual %s vs %s', [actual, expected]))
  end;

  procedure assertInDelta(actual, expected: real);
  var
    absolute: real;
  begin
    absolute := abs(actual - expected);
    assert(absolute < 0.001, format('Failed assertInDelta %f vs %f', [actual, expected]))
  end;
end.
