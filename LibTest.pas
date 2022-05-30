unit LibTest;

  // LibTest is contains the unit-tests for the Lib unit.
  
  {$LONGSTRINGS ON}
  {$MODE OBJFPC}

interface

  uses Lib, PascalTest;

  procedure testAddTen();
  procedure testConcatStrings();
  procedure testReturnsOnePointZero();
  procedure testReturnsTen();
  procedure firstTest();
  procedure run();
  procedure secondTest();
  procedure thirdTest();

implementation

  procedure run();
  begin
    testReturnsTen(); 
    testAddTen();
    testConcatStrings();
    testReturnsOnePointZero();
    firstTest();
    secondTest();
    thirdTest()
  end;

  procedure testReturnsTen();
  begin
    Writeln('testReturnsTen');
    assert(returnsTen() = 10)
  end;

  procedure testAddTen();
  begin
    Writeln('testAddTen');
    assertEqual(addTen(2), 12)
  end;

  procedure testConcatStrings();
  begin
    Writeln('testConcatStrings');
    assertEqual(concatStrings('a', ' string'), 'a string');
  end;

  procedure testReturnsOnePointZero();
  begin
    Writeln('testReturnsOnePointZero');
    assertInDelta(returnsOnePointZero(), 1.0);
  end;

  // The next three tests ensure state isolation accross tests i.e. varable `a`
  // is scoped to individual tests.
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
  // end state isolation tests.
end.
