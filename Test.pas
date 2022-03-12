unit Test;

  {$LONGSTRINGS ON}
  {$MODE OBJFPC}

interface

  uses PascalTest;

  type
    TTest = class
      procedure basicAssert;
      procedure assertEqualIntegers;
      procedure assertEqualStrings;
      procedure assertInDeltaFloats;
      procedure firstTest;
      procedure secondTest;
      procedure thirdTest;
    end;

implementation

  procedure TTest.basicAssert();
  begin
    assert(10 = 10);
  end;

  procedure TTest.assertEqualIntegers();
  begin
    assertEqual((10 + 2), 12)
  end;

  procedure TTest.assertEqualStrings();
  begin
    assertEqual('a' + ' string', 'a string');
  end;

  procedure TTest.assertInDeltaFloats();
  begin
    assertInDelta(1.0, 1.0);
  end;

  procedure TTest.firstTest();
  var
    a: integer;
  begin
    a := 1;
    assertEqual(1 , a)
  end;

  procedure TTest.secondTest();
  var
    a: integer;
  begin
    a := 1;
    a := a + 1;

    assertEqual(2 , a)
  end;

  procedure TTest.thirdTest();
  var
    a: integer;
  begin
    a := 1;

    assertEqual(1 , a);
  end;

end.
