program DemoClasses;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  clsPerson_u in 'clsPerson_u.pas',
  clsEmployee_u in 'clsEmployee_u.pas';

var
  p1: TPerson;
  e1: TEmployee;

begin
  try
    // Create a person class with aMale set to true using default param
    p1 := TPerson.Create('bob', 21);

    // Change the age using property
    p1.age := 10;

    // This will raise an error because age must be 0 or greater
    // p1.age := -1;

    // Display person
    WriteLn(p1.ToString);
    WriteLn(p1.Introduce);
  finally
    // Free up resources
    p1.Free;
  end;

  // Line break
  WriteLn;

  try
    e1 := TEmployee.Create('Will', 18, 15);

    WriteLn(e1.Introduce);

    WriteLn;

    WriteLn('My pay for ' + e1.hours.ToString + ' hours is £' +
        e1.pay.ToString);
  finally
    e1.Free;
  end;

  // Use this to wait for a key press before exiting
  ReadLn;

end.
