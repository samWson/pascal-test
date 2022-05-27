unit PascalTest;

  {$LONGSTRINGS ON}
  {$MODE OBJFPC}

interface

uses Classes;

  type
    TRunnableTests = array of string;

    TTestCase = class
      class procedure registerTestCase(pclass: pointer);
      class procedure run();
      class procedure runAllTests();
      class function tests(): TRunnableTests; virtual;
      procedure run(name: string);
      procedure assert(test: boolean; message: string = 'Failed Test');
      procedure assertEqual(actual, expected: integer);
      procedure assertEqual(actual, expected: string);
      procedure assertInDelta(actual, expected: real);
    private
      class var
        fSubclasses: TList;
    end;

implementation

  uses SysUtils;

  class procedure TTestCase.registerTestCase(pclass: pointer);
  begin
    Writeln('Registered class');
    fSubclasses.add(pclass)
  end;

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

  class procedure TTestCase.runAllTests();
  type
    runner = procedure();
  var
    pclass: pointer;
  begin

    Writeln('runAllTests');
    Writeln(Format('Count of fSubclasses: %d',[fSubclasses.count]));
    for pclass in fSubclasses do
    begin
      Writeln('In the loop');
      // TTestCase(pclass).run()
      runner(pclass)()
    end;
  end;

  class function TTestCase.tests(): TRunnableTests;
  begin
    tests := []
  end;

  procedure TTestCase.run(name: string);
  begin
    self.dispatchStr(name)
  end;

  procedure TTestCase.assert(test: boolean; message: string = 'Failed Test');
  begin
    if not test then
      raise Exception.create(message);
  end;

  procedure TTestCase.assertEqual(actual, expected: integer);
  begin
    assert(actual = expected, format('Failed assertEqual %d vs %d', [actual, expected]))
  end;

  procedure TTestCase.assertEqual(actual, expected: string);
  begin
    assert(actual = expected, format('Failed assertEqual %s vs %s', [actual, expected]))
  end;

  procedure TTestCase.assertInDelta(actual, expected: real);
  var
    absolute: real;
  begin
    absolute := abs(actual - expected);
    assert(absolute < 0.001, format('Failed assertInDelta %f vs %f', [actual, expected]))
  end;

  initialization
    begin
      Writeln('PascalTest.pas initialization');
      TTestCase.fSubclasses := TList.create()
    end;

end.
