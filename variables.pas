program Variables;

uses
    crt;

var
    num1, num2: integer;
    name: string;

begin
    writeln('Hello, World!');

    num1 := 25;
    num2 := 50;

    writeln('num1 = ', num1);
    writeln('num2 = ', num2);

    writeln('num1 + num2 = ', num1 + num2);
    writeln('num1 - num2 = ', num1 - num2);

    name := 'John Doe';

    writeln('My name is ', name);
    writeln('What is your name?');

    readln(name);

    writeln('Hello, ', name);

    readln;
end.
