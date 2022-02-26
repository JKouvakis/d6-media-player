unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, MPlayer, StdCtrls;

type
  TForm1 = class(TForm)
    MediaPlayer1: TMediaPlayer;
    TrackBar1: TTrackBar;
    Timer1: TTimer;
    OpenDialog1: TOpenDialog;
    Button1: TButton;
    procedure TrackBar1Change(Sender: TObject);
    procedure MediaPlayer1Click(Sender: TObject; Button: TMPBtnType;
      var DoDefault: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure OpenDialog1Close(Sender: TObject);
    procedure OpenDialog1SelectionChange(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  fileopen: TFileName;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
//Timer1.Enabled := False;
//mediaplayer1.Position := trackbar1.Position;
end;


procedure TForm1.MediaPlayer1Click(Sender: TObject; Button: TMPBtnType;
  var DoDefault: Boolean);
begin
        case Button of
        btPlay:
           begin
              mediaplayer1.play;
              Timer1.Enabled := True;
           end;
        end;
end;


procedure TForm1.Timer1Timer(Sender: TObject);
begin
   Trackbar1.Position := mediaplayer1.Position;
//   Edit1.text := inttostr(Timer1.InstanceSize);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
        opendialog1.Execute;
end;

procedure TForm1.OpenDialog1Close(Sender: TObject);
begin

with mediaplayer1 do begin
       Filename:= fileopen;
       DeviceType:= dtAutoSelect;
       Open;
       trackbar1.Max := Length;
       end;
       mediaplayer1.DisplayRect := Rect(0,0,form2.Panel1.Width,form2.Panel1.Height);

       trackbar1.Position := mediaplayer1.Position;
end;

procedure TForm1.OpenDialog1SelectionChange(Sender: TObject);
begin
      fileopen:= opendialog1.FileName;
end;

end.
