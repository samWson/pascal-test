unit Example;

  {$LONGSTRINGS ON}
  {$MODE OBJFPC}

interface

  uses PascalTest, SysUtils;

  type
    TExampleTest = class(TTestCase)
      class function tests(): TRunnableTests; override;
      procedure basicAssert(var _msg); message 'basicAssert';
      procedure assertEqualIntegers(var _msg); message 'assertEqualIntegers';
      procedure assertEqualStrings(var _msg); message 'assertEqualStrings';
      procedure assertInDeltaFloats(var _msg); message 'assertInDeltaFloats';
      procedure firstTest(var _msg); message 'firstTest';
      procedure secondTest(var _msg); message 'secondTest';
      procedure thirdTest(var _msg); message 'thirdTest';
    end;

implementation

  class function TExampleTest.tests(): TRunnableTests;
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

  procedure TExampleTest.basicAssert(var _msg);
  begin
    Writeln('basicAssert');
    assert(10 = 10);
  end;

  procedure TExampleTest.assertEqualIntegers(var _msg);
  begin
    Writeln('assertEqualIntegers');
    assertEqual((10 + 2), 12)
  end;

  procedure TExampleTest.assertEqualStrings(var _msg);
  begin
    Writeln('assertEqualStrings');
    assertEqual('a' + ' string', 'a string');
  end;

  procedure TExampleTest.assertInDeltaFloats(var _msg);
  begin
    Writeln('assertInDeltaFloats');
    assertInDelta(1.0, 1.0);
  end;

  procedure TExampleTest.firstTest(var _msg);
  var
    a: integer;
  begin
    Writeln('firstTest');
    a := 1;
    assertEqual(1 , a)
  end;

  procedure TExampleTest.secondTest(var _msg);
  var
    a: integer;
  begin
    Writeln('secondTest');
    a := 1;
    a := a + 1;

    assertEqual(2 , a)
  end;

  procedure TExampleTest.thirdTest(var _msg);
  var
    a: integer;
  begin
    Writeln('thirdTest');
    a := 1;

    assertEqual(1 , a);
  end;

end.
