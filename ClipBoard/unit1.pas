unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, windows, clipbrd, Controls, Graphics, Dialogs,
  ExtCtrls, StdCtrls, ExtDlgs;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Image1: TImage;
    Image2: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
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
 keybd_event(VK_SNAPSHOT,0,0,0);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if openpicturedialog1.Execute then
    image1.Picture.LoadFromFile(openpicturedialog1.FileName);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  image2.Picture.Bitmap.Assign(ClipBoard);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
     ClipBoard.Assign(image1.Picture.Bitmap);
end;

end.

