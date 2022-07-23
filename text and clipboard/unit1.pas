unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, ClipBrd, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    PopupMenu1: TPopupMenu;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.Button1Click(Sender: TObject);
begin
  memo1.PasteFromClipboard;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  memo1.CopyToClipboard;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  memo1.CutToClipboard;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  memo1.Clear;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  memo1.SelectAll;
end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
 memo1.PasteFromClipboard;
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
 memo1.CopyToClipboard;
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
     memo1.CutToClipboard;
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  memo1.Clear;
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  memo1.SelectAll;
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
   if memo1.SelLength > 0 then
      memo1.CopyToClipboard;
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin
    if memo1.SelLength > 0 then
      memo1.CutToClipboard;
end;

end.

