unit Test;

  {$LONGSTRINGS ON}
  {$MODE OBJFPC}

interface

  uses PascalTest, SysUtils;

  type
    TTest = class
    public
      class procedure run();
      procedure run(name: string);
    private
      procedure basicAssert(var _msg); message 'basicAssert';
      procedure assertEqualIntegers(var _msg); message 'assertEqualIntegers';
      procedure assertEqualStrings(var _msg); message 'assertEqualStrings';
      procedure assertInDeltaFloats(var _msg); message 'assertInDeltaFloats';
      procedure firstTest(var _msg); message 'firstTest';
      procedure secondTest(var _msg); message 'secondTest';
      procedure thirdTest(var _msg); message 'thirdTest';
      end;

  var
    tests: Array of string;

implementation

  class procedure TTest.run();
  var
    testCase: TTest;
    test: string;
  begin
    for test in tests do
    begin
      testCase := nil;

      try
        testCase := TTest.create();
        testCase.run(test)
      finally
        FreeAndNil(testCase)
      end
    end
  end;

  procedure TTest.run(name: string);
  begin
    self.dispatchStr(name)
  end;

  procedure TTest.basicAssert(var _msg);
  begin
    Writeln('basicAssert');
    assert(10 = 10);
  end;

  procedure TTest.assertEqualIntegers(var _msg);
  begin
    Writeln('assertEqualIntegers');
    assertEqual((10 + 2), 12)
  end;

  procedure TTest.assertEqualStrings(var _msg);
  begin
    Writeln('assertEqualStrings');
    assertEqual('a' + ' string', 'a string');
  end;

  procedure TTest.assertInDeltaFloats(var _msg);
  begin
    Writeln('assertInDeltaFloats');
    assertInDelta(1.0, 1.0);
  end;

  procedure TTest.firstTest(var _msg);
  var
    a: integer;
  begin
    Writeln('firstTest');
    a := 1;
    assertEqual(1 , a)
  end;

  procedure TTest.secondTest(var _msg);
  var
    a: integer;
  begin
    Writeln('secondTest');
    a := 1;
    a := a + 1;

    assertEqual(2 , a)
  end;

  procedure TTest.thirdTest(var _msg);
  var
    a: integer;
  begin
    Writeln('thirdTest');
    a := 1;

    assertEqual(1 , a);
  end;

initialization
  begin
    tests := [
      'firstTest',
      'secondTest',
      'thirdTest',
      'basicAssert',
      'assertEqualIntegers',
      'assertEqualStrings',
      'assertInDeltaFloats'
    ]
  end;

end.
