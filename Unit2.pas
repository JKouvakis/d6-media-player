unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
//    procedure FormKeyPress(Sender: TObject; var Key: Char);
//    procedure FormKeyDown(Sender: TObject; var Key: Word;
//      Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
form2.Width := panel1.Width;
form2.Height := panel1.Height;

end;



//procedure TForm2.FormKeyPress(Sender: TObject; var Key: Char);
//begin
//   If Key = 'A' then
//      begin
//        form1.Edit1.Text := 'haha';
//        form2.MakeFullyVisible;
//'      end;
//'
//'end;

//procedure TForm2.FormKeyDown(Sender: TObject; var Key: Word;
//  Shift: TShiftState);
//begin
//   If Key =  then
//      begin
//        form1.Edit1.Text := 'haha';
//        form2.MakeFullyVisible;
//      end;
//end;

end.
