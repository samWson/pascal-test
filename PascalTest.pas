unit PascalTest;

  {$LONGSTRINGS ON}
  {$MODE OBJFPC}

interface

  type
    TRunnableTests = array of string;

    TTestCase = class
      class procedure run();
      class function tests(): TRunnableTests; virtual;
      procedure run(name: string);
    end;

  procedure assert(test: boolean; message: string = 'Failed Test');
  procedure assertEqual(actual, expected: integer);
  procedure assertEqual(actual, expected: string);
  procedure assertInDelta(actual, expected: real);

implementation

  uses sysutils;

  class procedure TTestCase.run();
  var
    testCase: TTestCase;
    test: string;
  begin
    for test in tests() do
    begin
      testCase := nil;

      try
        testCase := self.create();
        testCase.run(test)
      finally
        FreeAndNil(testCase)
      end
    end
  end;

  class function TTestCase.tests(): TRunnableTests;
  begin
    tests := []
  end;

  procedure TTestCase.run(name: string);
  begin
    self.dispatchStr(name)
  end;

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
