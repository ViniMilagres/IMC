object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Calculo de indice corporal'
  ClientHeight = 286
  ClientWidth = 558
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
    Left = 24
    Top = 79
    Width = 92
    Height = 24
    Caption = 'Sua Altura'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 119
    Width = 81
    Height = 24
    Caption = 'Seu Peso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 159
    Width = 89
    Height = 24
    Caption = 'Seu Sexo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnResultado: TButton
    Left = 128
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Resultado'
    TabOrder = 0
    OnClick = btnResultadoClick
  end
  object btnVerRequisitos: TButton
    Left = 256
    Top = 208
    Width = 137
    Height = 25
    Caption = 'Ver Requisitos'
    TabOrder = 1
    OnClick = btnVerRequisitosClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 558
    Height = 57
    Align = alTop
    Caption = 'Calculadora - Ind'#237'ce de Massa Corporal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object edtAltura: TEdit
    Left = 136
    Top = 85
    Width = 281
    Height = 21
    TabOrder = 3
    TextHint = 'Digite sua Altura'
  end
  object edtPeso: TEdit
    Left = 136
    Top = 125
    Width = 281
    Height = 21
    TabOrder = 4
    TextHint = 'Digite seu Peso'
  end
  object ComboBox1: TComboBox
    Left = 136
    Top = 165
    Width = 281
    Height = 21
    Style = csDropDownList
    TabOrder = 5
    TextHint = 'Escolha o sexo'
    Items.Strings = (
      'MASCULINO'
      'FEMININO')
  end
end
