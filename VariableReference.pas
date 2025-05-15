program Reference;

{$mode objfpc}{$H+}

uses
  SysUtils, Classes;

procedure SwapVar(var a, b: Integer);
var
    temp: Integer;
begin
    temp := a;
    a := b;
    b := temp;
end;

var
    a, b: Integer;

begin
    WriteLn;
    WriteLn;

    a := 10;
    b := 20;

    WriteLn('Before Swap: a = ', a, ', b = ', b);
    SwapVar(a, b);
    WriteLn('After Swap: a = ', a, ', b = ', b);

    WriteLn('This is a reference program.');
end.
