object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 922
  ClientWidth = 1249
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 280
    Top = 112
    Width = 569
    Height = 409
    Caption = 'Panel1'
    TabOrder = 0
    object Label1: TLabel
      Left = 72
      Top = 58
      Width = 3
      Height = 15
    end
    object Label2: TLabel
      Left = 439
      Top = 67
      Width = 3
      Height = 15
    end
    object Label3: TLabel
      Left = 257
      Top = 58
      Width = 3
      Height = 15
    end
    object Button1: TButton
      Left = 225
      Top = 184
      Width = 120
      Height = 57
      Caption = 'Enviar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 56
      Top = 88
      Width = 121
      Height = 23
      TabOrder = 1
      TextHint = 'Dano'
    end
    object Edit2: TEdit
      Left = 225
      Top = 88
      Width = 121
      Height = 23
      TabOrder = 2
      TextHint = 'Defesa'
    end
    object Edit3: TEdit
      Left = 392
      Top = 88
      Width = 121
      Height = 23
      TabOrder = 3
      TextHint = 'Vida'
    end
  end
end
