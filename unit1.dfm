object Form1: TForm1
  Left = 192
  Top = 152
  Width = 1160
  Height = 528
  Caption = 'KUSTOMER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 104
    Top = 8
    Width = 19
    Height = 16
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 104
    Top = 40
    Width = 34
    Height = 16
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 104
    Top = 72
    Width = 28
    Height = 16
    Caption = 'TELP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 104
    Top = 104
    Width = 35
    Height = 16
    Caption = 'EMAIL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 104
    Top = 136
    Width = 48
    Height = 16
    Caption = 'ALAMAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 104
    Top = 168
    Width = 49
    Height = 16
    Caption = 'MEMBER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 344
    Top = 168
    Width = 57
    Height = 16
    Caption = ' DISKON :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 416
    Top = 168
    Width = 26
    Height = 16
    Caption = '00%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 104
    Top = 416
    Width = 102
    Height = 16
    Caption = 'MASUKKAN NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 168
    Top = 8
    Width = 337
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 168
    Top = 40
    Width = 337
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 168
    Top = 72
    Width = 337
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 168
    Top = 104
    Width = 337
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 168
    Top = 136
    Width = 337
    Height = 21
    TabOrder = 4
  end
  object cbb1: TComboBox
    Left = 168
    Top = 168
    Width = 169
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    OnChange = cbb1Change
    Items.Strings = (
      'ya'
      'tidak')
  end
  object Button1: TButton
    Left = 104
    Top = 200
    Width = 89
    Height = 25
    Caption = 'BARU'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 208
    Top = 200
    Width = 89
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 312
    Top = 200
    Width = 89
    Height = 25
    Caption = 'EDIT'
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 416
    Top = 200
    Width = 89
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 9
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 520
    Top = 200
    Width = 89
    Height = 25
    Caption = 'BATAL'
    TabOrder = 10
    OnClick = Button5Click
  end
  object dbgrd1: TDBGrid
    Left = 104
    Top = 240
    Width = 793
    Height = 161
    DataSource = DataModule2.ds1
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nik'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telp'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'member'
        Visible = True
      end>
  end
  object Button6: TButton
    Left = 624
    Top = 200
    Width = 89
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 12
    OnClick = Button6Click
  end
  object edt6: TEdit
    Left = 232
    Top = 416
    Width = 657
    Height = 21
    TabOrder = 13
    OnChange = edt6Change
  end
end
