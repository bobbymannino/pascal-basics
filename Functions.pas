program Functions;

const
    PI = 3.141592653;

var
    radius: real = 1;

function AreaOfCircle(radius: real): real;
begin
    AreaOfCircle := PI * radius * radius;
end;

begin
    writeln('The area of a circle with radius ', radius, ' is ', AreaOfCircle(radius));

    writeln('Enter a radius: ');
    readln(radius);

    writeln('New radius: ', radius);
    writeln('The area of a circle with radius ', radius, ' is ', AreaOfCircle(radius));

    readln;
end.