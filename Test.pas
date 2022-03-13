unit Test;

  {$LONGSTRINGS ON}
  {$MODE OBJFPC}

interface

  uses PascalTest;

  type
    TTest = class
      procedure basicAssert(var _msg); message 'basicAssert';
      procedure assertEqualIntegers(var _msg); message 'assertEqualIntegers';
      procedure assertEqualStrings(var _msg); message 'assertEqualStrings';
      procedure assertInDeltaFloats(var _msg); message 'assertInDeltaFloats';
      procedure firstTest(var _msg); message 'firstTest';
      procedure secondTest(var _msg); message 'secondTest';
      procedure thirdTest(var _msg); message 'thirdTest';
    end;

implementation

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

end.
