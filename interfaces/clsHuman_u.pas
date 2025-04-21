unit clsHuman_u;

interface

type
  IHuman = interface
    function GetAge: shortint;

    procedure SetAge(const aAge: shortint);

    property age: shortint read GetAge write SetAge;
  end;

  IPupil = interface
    function GetFavoriteClass: string;
  end;

  IEmployee = interface
    function GetPay: Double;
  end;

  THuman = class(TInterfacedObject, IHuman)
  private
    fAge: shortint;
  public
    function GetAge: shortint;

    procedure SetAge(const aAge: shortint);

    property age: shortint read GetAge write SetAge default 0;
  end;

  TPupil = class(THuman, IPupil)
  public
    function GetFavoriteClass: string;
  end;

  TEmployee = class(THuman, IEmployee)
  public
    function GetPay: Double;
  end;

implementation

{ THuman }

function THuman.GetAge: shortint;
begin
  Result := fAge;
end;

procedure THuman.SetAge(const aAge: shortint);
begin
  fAge := aAge;
end;

{ TEmployee }

function TEmployee.GetPay: Double;
begin
  Result := 12500.0;
end;

{ TPupil }

function TPupil.GetFavoriteClass: string;
begin
  Result := 'Computer Science';
end;

end.
