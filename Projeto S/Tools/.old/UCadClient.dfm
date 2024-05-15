object FrmCAD: TFrmCAD
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Sistema'
  ClientHeight = 308
  ClientWidth = 414
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 414
    Height = 65
    Align = alTop
    Color = clCream
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 88
      Top = 24
      Width = 238
      Height = 25
      Alignment = taCenter
      Caption = 'Cadastro de Contratantes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 414
    Height = 243
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 201
      Width = 412
      Height = 41
      Align = alBottom
      TabOrder = 0
      object DBNavigator2: TDBNavigator
        Left = 80
        Top = 6
        Width = 212
        Height = 25
        DataSource = DS_CadCont
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 0
      end
    end
  end
  object FDQry_CadCont: TFDQuery
    BeforeInsert = FDQry_CadContBeforeInsert
    Connection = DM.FDConnection
    SQL.Strings = (
      'select'
      #9'cod,'
      #9'nome,'
      #9'cpf_cnpj, '
      #9'telefone '
      ''
      ' from contratantes'
      'ORDER BY COD')
    Left = 376
    Top = 16
    object FDQry_CadContcod: TIntegerField
      FieldName = 'cod'
      Origin = 'cod'
    end
    object FDQry_CadContnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object FDQry_CadContcpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      EditMask = '000\.000\.000\-##;0;_'
      Size = 14
    end
    object FDQry_CadConttelefone: TWideStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      EditMask = '!\(99\)00000-0000;0;_'
      Size = 11
    end
  end
  object DS_CadCont: TDataSource
    DataSet = FDQry_CadCont
    Left = 312
    Top = 16
  end
end
