program Interfaces;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  clsHuman_u in 'clsHuman_u.pas';

var
  employee: TEmployee;
  pupil: TPupil;

begin
  employee := TEmployee.Create;
  pupil := TPupil.Create;
  try
    WriteLn('Employee Age = ' + employee.age.ToString); // Employee Age = 0
    employee.age := 21;
    WriteLn('Employee Age = ' + employee.age.ToString); // Employee Age = 21
    WriteLn('Pupil Age = ' + pupil.age.ToString); // Pupil Age = 0
    WriteLn('Pupil''s favorite class = ' + pupil.GetFavoriteClass); // Pupil's favorite class = Computer Science
  finally
    employee.Free;
    pupil.Free;
  end;

  ReadLn;
end.
