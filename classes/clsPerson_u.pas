unit clsPerson_u;

interface

uses
  Classes, System.SysUtils;

type
  // TPerson is a class that inherits from TObject
  // `TPerson = class` is the same as the line below
  TPerson = class(TObject)

  // PRIVATE Can only be accessed from within this class
  private
    fName: string;
    fAge: smallint;
    procedure SetAge(const aAge: smallint);
    function GetAge: smallint;

  // PUBLIC Can be accessed from within the class and within an instance
  public
    // Properties in public can be set/get with dot notation
    fMale: boolean;

    constructor Create(const aName: string; const aAge: smallint; aMale: boolean = true);
    destructor Destroy; override;

    // Procedures do not have a return value

    procedure SetName(const aName: string);
    // Functions do have a return value
    function GetName: string;

    function ToString: string;

    // Virtual methods allow classes that inherit this class to redefine the logic for the method
    function Introduce: string; virtual;

  // PUBLISHED Can only be accessed from within this class or any class that inherits it
  published
    // Properties do not have to have both read and write
    property age: smallint read GetAge write SetAge;
  end;

implementation

constructor TPerson.Create(const aName: string; const aAge: smallint; aMale: boolean = true);
begin
  inherited Create;
  fName := aName;
  fAge := aAge;
  fMale := aMale;
end;

destructor TPerson.Destroy;
begin
  inherited Destroy;
end;

procedure TPerson.SetName(const aName: string);
begin
  fName := aName;
end;

function TPerson.ToString: string;
begin
  WriteLn('TPerson:');
  WriteLn('Name: ' + fName);
  WriteLn('Age: ' + inttostr(fAge));
  if fMale then
    WriteLn('Male: true')
  else
    WriteLn('Male: false');
end;

function TPerson.GetName: string;
begin
  Result := fName;
end;

function TPerson.Introduce: string;
begin
  Write('Hi there, my name is ' + fName + '. I am ' + fAge.ToString + ' years old and I am a ');
  if fMale = False then
    Write('wo');

  Write('man.')
end;

procedure TPerson.SetAge(const aAge: smallint);
begin
  if aAge < 0 then
    raise Exception.Create('Age must be 0 or higher');

  fAge := aAge;
end;

function TPerson.GetAge: smallint;
begin
  Result := fAge;
end;

end.
