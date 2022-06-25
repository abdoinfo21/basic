unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  list:TStringList;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  list.Add(edit1.text);
  edit1.Clear;
  listbox1.Clear;
  listbox1.Items.Assign(list);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i:integer;
begin
  for i:=0 to list.Count - 1 do
      begin
        if list[i] = edit1.Text then
          listbox1.Selected[i]:=true;
      end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  list:=TStringList.Create;
end;

end.

