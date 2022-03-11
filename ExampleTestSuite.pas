program ExampleTestSuite;

uses PascalTest;

procedure basicAssert();
begin
  assert(10 = 10);
end;

procedure assertEqualIntegers();
begin
  assertEqual((10 + 2), 12)
end;

procedure assertEqualStrings();
begin
  assertEqual('a' + ' string', 'a string');
end;

procedure assertInDeltaFloats();
begin
  assertInDelta(1.0, 1.0);
end;

procedure firstTest();
var
  a: integer;
begin
  a := 1;
  assertEqual(1 , a)
end;

procedure secondTest();
var
  a: integer;
begin
  a := 1;
  a := a + 1;

  assertEqual(2 , a)
end;

procedure thirdTest();
var
  a: integer;
begin
  a := 1;

  assertEqual(1 , a);
end;

begin
  Writeln('Begin');

  test('first test', @firstTest);

  test('second test', @secondTest);

  test('third test', @thirdTest);

  test('asserting a boolean', @basicAssert);

  test('asserting integer maths', @assertEqualIntegers);

  test('strings are identical', @assertEqualStrings);

  test('floats are close enough', @assertInDeltaFloats);

  Writeln('All assertions passed');
  Writeln('End')
end.

