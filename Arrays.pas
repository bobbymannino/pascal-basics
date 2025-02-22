program Arrays;

type
    intArray = array [] of integer;

var
    arr: intArray;
    i: integer;

begin
    SetLength(arr, 5);
    arr[0] := 1;
    arr[1] := 2;
    arr[2] := 3;
    arr[3] := 4;
    arr[4] := 5;

    for i := 0 to Length(arr) - 1 do
        writeln(arr[i]);
    end;
end.
