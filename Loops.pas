program Loops;

function max(num1, num2: integer): integer;
var
    result: integer;
begin
    if (num1 > num2) then
        result := num1
    else
        result := num2;
    max := result;
end;

var
    i: integer;

begin
    for i := 1 to 10 do
        write(i, ' ');

    writeln;

    writeln('Max of 10 and 20 is: ', max(10, 20));
end.