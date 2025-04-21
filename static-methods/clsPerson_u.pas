unit clsPerson_u;

interface

type
  TPerson = class
    public
      name: string;
      age: shortint;
      constructor Create(const aName: string; const aAge: shortint);
      class function Mock: TPerson;
  end;

implementation

{ TPerson }

constructor TPerson.Create(const aName: string; const aAge: shortint);
begin
  name := aName;
  age := aAge;
end;

class function TPerson.Mock: TPerson;
begin
  Result := TPerson.Create('Bob', 21);
end;

end.
