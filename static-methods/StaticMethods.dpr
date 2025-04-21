program StaticMethods;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  clsPerson_u in 'clsPerson_u.pas';

var
  person: TPerson;

begin
  person := TPerson.Mock;
  try
    WriteLn(person.name);
    WriteLn(person.age.ToString);
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

  person.Free;

  ReadLn;
end.
