unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    Edit1: TEdit;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  list:TStringList;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
begin
list.add(edit1.Text);
edit1.Clear;
ListBox1.Clear;
//ListBox1.Items.Assign(list);
listbox1.Items.AddStrings(list);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
list:=TStringList.Create;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
i:integer;
begin
for i:=0 to list.Count-1 do
begin
if list[i]= edit1.Text then
  begin
  Listbox1.Selected[i]:= True;
  end;
end;
end;

end.
