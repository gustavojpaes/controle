object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Controle'
  ClientHeight = 393
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 144
    Top = 328
    Width = 62
    Height = 13
    Caption = 'Total Credito'
  end
  object Label2: TLabel
    Left = 264
    Top = 329
    Width = 58
    Height = 13
    Caption = 'Total Debito'
  end
  object Label3: TLabel
    Left = 391
    Top = 327
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object Label4: TLabel
    Left = 24
    Top = 8
    Width = 53
    Height = 13
    Caption = 'Data Inicial'
  end
  object Label5: TLabel
    Left = 197
    Top = 8
    Width = 48
    Height = 13
    Caption = 'Data Final'
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 54
    Width = 488
    Height = 267
    DataSource = DataSource1
    DefaultDrawing = False
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 518
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 518
    Top = 56
    Width = 75
    Height = 25
    Caption = 'novo'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 518
    Top = 87
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 518
    Top = 118
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 8
    OnClick = Button4Click
  end
  object DBEdit1: TDBEdit
    Left = 128
    Top = 346
    Width = 121
    Height = 21
    Cursor = crNo
    TabStop = False
    DragCursor = crNo
    DragMode = dmAutomatic
    ReadOnly = True
    TabOrder = 9
  end
  object DBEdit2: TDBEdit
    Left = 264
    Top = 348
    Width = 121
    Height = 21
    Cursor = crNo
    TabStop = False
    AutoSelect = False
    DragCursor = crNo
    DragMode = dmAutomatic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
  end
  object Button6: TButton
    Left = 349
    Top = 23
    Width = 163
    Height = 25
    Caption = 'pesquisa data'
    TabOrder = 2
    OnClick = Button6Click
  end
  object MaskEdit1: TMaskEdit
    Left = 24
    Top = 27
    Width = 153
    Height = 21
    EditMask = '!99.99.9999;1;_'
    MaxLength = 10
    TabOrder = 0
    Text = '  .  .    '
  end
  object MaskEdit2: TMaskEdit
    Left = 197
    Top = 27
    Width = 146
    Height = 21
    EditMask = '!99.99.9999;1;_'
    MaxLength = 10
    TabOrder = 1
    Text = '  .  .    '
  end
  object Button8: TButton
    Left = 518
    Top = 23
    Width = 75
    Height = 25
    Caption = 'reset'
    TabOrder = 3
    OnClick = Button8Click
  end
  object DBEdit3: TDBEdit
    Left = 391
    Top = 346
    Width = 121
    Height = 21
    Cursor = crNo
    TabStop = False
    DragCursor = crNo
    DragMode = dmAutomatic
    ReadOnly = True
    TabOrder = 11
  end
  object Button7: TButton
    Left = 28
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 12
    OnClick = Button7Click
  end
  object Button5: TButton
    Left = 518
    Top = 149
    Width = 75
    Height = 25
    Caption = 'contas'
    TabOrder = 13
    OnClick = Button5Click
  end
  object Button9: TButton
    Left = 544
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Button9'
    TabOrder = 14
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 448
    Top = 176
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 448
    Top = 224
    object ClientDataSet1DATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object ClientDataSet1TIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object ClientDataSet1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 15
    end
    object ClientDataSet1VALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 456
    Top = 272
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'contas'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver220.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=22.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver220.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=22.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Database=C:\projetos\delphi\contas\contas.gdb'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    Connected = True
    Left = 440
    Top = 80
  end
  object SQLDataSet1: TSQLDataSet
    Active = True
    CommandText = 'select * from CONTROLE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 448
    Top = 136
    object SQLDataSet1DATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object SQLDataSet1TIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object SQLDataSet1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 15
    end
    object SQLDataSet1VALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
  end
end
