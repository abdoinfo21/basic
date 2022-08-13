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
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  SL:TStringList;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  SL:=TStringList.Create;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  SL.LoadFromFile('d:\sl.txt');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  key,value:string;
begin
  key:=inputbox('key','enter key' ,'');
  value:=inputbox('value','enter value','');
  SL.Values[key]:=value;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  SL.Sort;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  listbox1.Clear;
  listbox1.Items.Assign(SL);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  SL.SaveToFile('d:\sl.txt');
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  listbox1.Clear;
end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  SL.Free;
end;

end.

