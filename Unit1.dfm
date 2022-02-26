object Form1: TForm1
  Left = 230
  Top = 538
  Width = 647
  Height = 101
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MediaPlayer1: TMediaPlayer
    Left = 8
    Top = 40
    Width = 424
    Height = 25
    FileName = 'D:\Cradle_Of_Filth_-_Her_Ghost_In_The_Fog.mpg'
    TabOrder = 0
    OnClick = MediaPlayer1Click
  end
  object TrackBar1: TTrackBar
    Left = 8
    Top = 8
    Width = 625
    Height = 25
    Max = 100
    Orientation = trHorizontal
    Frequency = 1
    Position = 0
    SelEnd = 0
    SelStart = 0
    TabOrder = 1
    TickMarks = tmBottomRight
    TickStyle = tsAuto
    OnChange = TrackBar1Change
  end
  object Button1: TButton
    Left = 536
    Top = 40
    Width = 65
    Height = 25
    Caption = 'open'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 448
    Top = 40
  end
  object OpenDialog1: TOpenDialog
    OnClose = OpenDialog1Close
    OnSelectionChange = OpenDialog1SelectionChange
    Left = 488
    Top = 40
  end
end
