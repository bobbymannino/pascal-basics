unit clsEmployee_u;

interface

uses
  System.SysUtils, clsPerson_u;

type
  TEmployee = class(TPerson)
  private
    function GetPay: double;
  public
    hours: double;

    constructor Create(const aName: string; const aAge: smallint; const aHours: double; aMale: boolean = true);

    // Overriding from TPerson
    function Introduce: string; override;

    // No set method which means cannot be tampered with
    property pay: double read GetPay;
  end;

implementation

constructor TEmployee.Create(const aName: string; const aAge: smallint;
  const aHours: double; aMale: boolean);
begin
  inherited Create(aName, aAge, aMale);

  hours := aHours;
end;

function TEmployee.Introduce: string;
begin
  Write('Hi there, I am an employee, my name is ' + GetName + '. I am ' + age.ToString + ' years old and I am a ');
  if fMale = False then
    Write('wo');

  Write('man.')
end;

function TEmployee.GetPay: double;
begin
  case age of
    0..15: Result := 0;
    16..17: Result := 7.25 * hours;
    18..64: Result := 15.00 * hours;
    65..100: Result := 20.00 * hours;
  else
    Result := 10.00 * hours;
  end;
end;

end.
