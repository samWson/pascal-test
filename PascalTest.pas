unit PascalTest;

  {$LONGSTRINGS ON}
  {$MODE OBJFPC}

interface

  procedure assert(test: boolean; message: string = 'Failed Test');
  procedure assertEqual(actual, expected: integer);
  procedure assertEqual(actual, expected: string);

implementation

  uses sysutils;

  procedure assert(test: boolean; message: string = 'Failed Test');
  begin
    if not test then
      raise Exception.create(message);
  end;

  procedure assertEqual(actual, expected: integer);
  begin
    assert(actual = expected, format('Failed assert_equal %d vs %d', [actual, expected]))
  end;

  procedure assertEqual(actual, expected: string);
  begin
    assert(actual = expected, format('Failed assert_equal %s vs %s', [actual, expected]))
  end;
end.
