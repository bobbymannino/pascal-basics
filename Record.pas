program Records;

type
  TPerson = record
    Name: string;
    Age: integer;
  end;

var
  Person: TPerson;

procedure printPerson(var person: TPerson);
begin
    writeln('Name: ', person.Name);
    writeln('Age: ', person.Age);
end;

begin
    Person.Name := 'John';
    Person.Age := 30;
    
    printPerson(Person);
end.