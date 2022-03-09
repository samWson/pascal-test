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

begin
  Writeln('Begin');

  test('asserting a boolean', @basicAssert);

  test('asserting integer maths', @assertEqualIntegers);

  test('strings are identical', @assertEqualStrings);

  test('floats are close enough', @assertInDeltaFloats);

  Writeln('All assertions passed');
  Writeln('End')
end.

