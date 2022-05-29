unit ExampleTestCase;

  {$LONGSTRINGS ON}
  {$MODE OBJFPC}

interface

  uses PascalTest;

  procedure assertEqualIntegers();
  procedure assertEqualStrings();
  procedure assertInDeltaFloats();
  procedure basicAssert();
  procedure firstTest();
  procedure run();
  procedure secondTest();
  procedure thirdTest();

implementation

  procedure run();
  begin
    basicAssert(); 
    assertEqualIntegers();
    assertEqualStrings();
    assertInDeltaFloats();
    firstTest();
    secondTest();
    thirdTest()
  end;

  procedure basicAssert();
  begin
    Writeln('basicAssert');
    assert(10 = 10);
  end;

  procedure assertEqualIntegers();
  begin
    Writeln('assertEqualIntegers');
    assertEqual((10 + 2), 12)
  end;

  procedure assertEqualStrings();
  begin
    Writeln('assertEqualStrings');
    assertEqual('a' + ' string', 'a string');
  end;

  procedure assertInDeltaFloats();
  begin
    Writeln('assertInDeltaFloats');
    assertInDelta(1.0, 1.0);
  end;

  procedure firstTest();
  var
    a: integer;
  begin
    Writeln('firstTest');
    a := 1;
    assertEqual(1 , a)
  end;

  procedure secondTest();
  var
    a: integer;
  begin
    Writeln('secondTest');
    a := 1;
    a := a + 1;

    assertEqual(2 , a)
  end;

  procedure thirdTest();
  var
    a: integer;
  begin
    Writeln('thirdTest');
    a := 1;

    assertEqual(1 , a);
  end;
end.
