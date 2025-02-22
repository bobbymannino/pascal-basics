{$mode objfpc}
{$m+}

program Classes;

type 
    Rectangle = class
        private
            width, height: integer;
        public
            constructor create(w, h: integer);
            function area(): integer;
            procedure print();
            procedure draw();
    end;

var
    r1: Rectangle;

constructor Rectangle.create(w, h: integer);
begin
    width := w;
    height := h;
end;

function Rectangle.area(): integer;
begin
    Area := width * height;
end;

procedure Rectangle.draw;
var
   i, j: integer;
begin
   for i := 1 to height do
   begin
      for j := 1 to width do
         write(' * ');
      writeln;
   end;
end;

procedure Rectangle.Print;
begin
    writeln('Width: ', width);
    writeln('Height: ', height);
    writeln('Area: ', Area());
end;

begin
    r1 := Rectangle.create(10, 20);
    r1.print;
    r1.draw;
end.