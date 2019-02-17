object PantallaCompleta: TPantallaCompleta
  Left = 0
  Top = 0
  Width = 128
  Height = 88
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Image: TImage
    Left = 0
    Top = 0
    Width = 33
    Height = 53
    Cursor = crCross
    AutoSize = True
    Center = True
    Proportional = True
    OnMouseDown = ImageMouseDown
  end
  object LabelMouseP: TLabel
    Left = 0
    Top = 0
    Width = 5
    Height = 16
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
end
