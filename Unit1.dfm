object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'LibTEST - Use a DLL'
  ClientHeight = 147
  ClientWidth = 370
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 45
    Width = 39
    Height = 13
    Caption = 'Param 1'
  end
  object Label2: TLabel
    Left = 143
    Top = 45
    Width = 39
    Height = 13
    Caption = 'Param 2'
  end
  object edtParam1: TEdit
    Left = 16
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '8,75'
  end
  object edtParam2: TEdit
    Left = 143
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '0,75'
  end
  object Button1: TButton
    Left = 270
    Top = 62
    Width = 75
    Height = 25
    Caption = 'Result'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 270
    Top = 114
    Width = 75
    Height = 25
    Caption = 'Text'
    TabOrder = 3
    OnClick = Button2Click
  end
end
