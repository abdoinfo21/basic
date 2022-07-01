program project1;

uses
   sysutils;

var
  i:integer;
begin
  for i:=0 to 255 do
  begin
    writeln('#'+inttostr(i)+' = '+chr(i))
  end;
  readln;
end.

