object Frm_Orcamento: TFrm_Orcamento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Or'#231'amentos'
  ClientHeight = 605
  ClientWidth = 1088
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 13
  object Label7: TLabel
    Left = 16
    Top = 32
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object PanelCenter: TPanel
    Left = 0
    Top = 25
    Width = 1088
    Height = 580
    Align = alClient
    Caption = 'PanelCenter'
    TabOrder = 1
    ExplicitWidth = 1082
    ExplicitHeight = 575
    object DBGrid: TDBGrid
      Left = 1
      Top = 97
      Width = 1086
      Height = 384
      Align = alClient
      DataSource = DS_OrcamentoItem
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'cod_orcamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'id_servico'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'quantidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor_unid'
          Visible = True
        end>
    end
    object Button2: TButton
      Left = 912
      Top = 6
      Width = 145
      Height = 35
      Caption = 'Limpar sele'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Panel3: TPanel
      Left = 1
      Top = 538
      Width = 1086
      Height = 41
      Align = alBottom
      TabOrder = 2
      ExplicitTop = 533
      ExplicitWidth = 1080
    end
    object Panel4: TPanel
      Left = 1
      Top = 481
      Width = 1086
      Height = 57
      Align = alBottom
      TabOrder = 3
      ExplicitTop = 476
      ExplicitWidth = 1080
      object Label10: TLabel
        Left = 548
        Top = 18
        Width = 24
        Height = 13
        Caption = 'Total'
      end
      object DBEdit1: TDBEdit
        Left = 602
        Top = 14
        Width = 135
        Height = 21
        DataField = 'telefone'
        DataSource = DS_Orcamento
        TabOrder = 0
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 1086
      Height = 96
      Align = alTop
      TabOrder = 4
      ExplicitWidth = 1080
      object Panel2: TPanel
        Left = 5
        Top = 5
        Width = 185
        Height = 17
        Caption = 'Solicitante'
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 7
        Top = 37
        Width = 50
        Height = 21
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 71
        Top = 37
        Width = 274
        Height = 21
        TabOrder = 2
      end
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 1084
        Height = 96
        Align = alTop
        TabOrder = 3
        ExplicitWidth = 1078
        object Label8: TLabel
          Left = 449
          Top = 24
          Width = 48
          Height = 13
          Caption = 'CPF/CNPJ'
        end
        object Label9: TLabel
          Left = 580
          Top = 24
          Width = 42
          Height = 13
          Caption = 'Telefone'
        end
        object Label2: TLabel
          Left = 8
          Top = 24
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object Label3: TLabel
          Left = 72
          Top = 24
          Width = 75
          Height = 13
          Caption = 'Nome Completo'
        end
        object Panel6: TPanel
          Left = 5
          Top = 5
          Width = 185
          Height = 17
          Caption = 'Solicitante'
          TabOrder = 0
        end
        object ID: TDBEdit
          Left = 7
          Top = 39
          Width = 50
          Height = 21
          DataField = 'cod_cliente'
          DataSource = DS_Orcamento
          TabOrder = 1
        end
        object Nome: TDBEdit
          Left = 68
          Top = 38
          Width = 373
          Height = 21
          DataField = 'nome'
          DataSource = DS_Orcamento
          TabOrder = 2
        end
        object CPF: TDBEdit
          Left = 447
          Top = 38
          Width = 125
          Height = 21
          DataField = 'cpf_cnpj'
          DataSource = DS_Orcamento
          TabOrder = 3
        end
        object Telefone: TDBEdit
          Left = 578
          Top = 38
          Width = 135
          Height = 21
          DataField = 'telefone'
          DataSource = DS_Orcamento
          TabOrder = 4
        end
      end
    end
  end
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 1088
    Height = 25
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1082
    object Label1: TLabel
      Left = 10
      Top = 2
      Width = 78
      Height = 19
      Caption = 'Or'#231'amento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 399
      Top = 2
      Width = 44
      Height = 19
      Caption = 'Grupo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 897
      Top = 2
      Width = 43
      Height = 19
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 230
      Top = 2
      Width = 32
      Height = 19
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Id_Orc: TDBEdit
      Left = 93
      Top = 2
      Width = 121
      Height = 21
      DataField = 'cod'
      DataSource = DS_Orcamento
      ReadOnly = True
      TabOrder = 0
    end
    object Data_Orc: TDBEdit
      Left = 266
      Top = 2
      Width = 121
      Height = 21
      DataField = 'data_orcamento'
      DataSource = DS_Orcamento
      TabOrder = 1
    end
    object Status: TDBEdit
      Left = 947
      Top = 2
      Width = 121
      Height = 21
      Color = clInfoBk
      DataField = 'status'
      DataSource = DS_Orcamento
      TabOrder = 2
    end
    object DBComboBox1: TDBComboBox
      Left = 447
      Top = 2
      Width = 145
      Height = 21
      DataField = 'data_orcamento'
      TabOrder = 3
    end
  end
  object FDQry_Orcamento: TFDQuery
    AfterScroll = FDQry_OrcamentoAfterScroll
    Connection = DM.FDConnection
    SQL.Strings = (
      'Select'
      
        'Orcamentos.cod, Orcamentos.cod_cliente, Orcamentos.data_orcament' +
        'o, Orcamentos.status,'
      #9'contratantes.nome,'
      #9'contratantes.cpf_cnpj,'
      #9'contratantes.telefone'
      ''
      'from Orcamentos'
      'left join contratantes'
      'on(contratantes.cod=Orcamentos.cod_cliente)')
    Left = 744
    Top = 32
    object FDQry_Orcamentocod: TIntegerField
      FieldName = 'cod'
      Origin = 'cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQry_Orcamentocod_cliente: TIntegerField
      FieldName = 'cod_cliente'
      Origin = 'cod_cliente'
    end
    object FDQry_Orcamentodata_orcamento: TSQLTimeStampField
      FieldName = 'data_orcamento'
      Origin = 'data_orcamento'
    end
    object FDQry_Orcamentostatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object FDQry_Orcamentonome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object FDQry_Orcamentocpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      FixedChar = True
      Size = 14
    end
    object FDQry_Orcamentotelefone: TWideStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 11
    end
  end
  object DS_Orcamento: TDataSource
    DataSet = FDQry_Orcamento
    Left = 744
    Top = 73
  end
  object FDQry_OrcamentoItem: TFDQuery
    AfterInsert = FDQry_OrcamentoItemAfterInsert
    BeforePost = FDQry_OrcamentoItemBeforePost
    Connection = DM.FDConnection
    SQL.Strings = (
      'Select '
      'cod_orcamento,'
      'id_servico,'
      'quantidade,'
      'valor_unid'
      ' From orcamento_itens'
      'where cod_orcamento = :cod_orcamento')
    Left = 905
    Top = 34
    ParamData = <
      item
        Name = 'COD_ORCAMENTO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object FDQry_OrcamentoItemcod_orcamento: TIntegerField
      FieldName = 'cod_orcamento'
      Origin = 'cod_orcamento'
    end
    object FDQry_OrcamentoItemid_servico: TIntegerField
      FieldName = 'id_servico'
      Origin = 'id_servico'
    end
    object FDQry_OrcamentoItemquantidade: TIntegerField
      FieldName = 'quantidade'
      Origin = 'quantidade'
    end
    object FDQry_OrcamentoItemvalor_unid: TFloatField
      FieldName = 'valor_unid'
      Origin = 'valor_unid'
    end
  end
  object DS_OrcamentoItem: TDataSource
    DataSet = FDQry_OrcamentoItem
    Left = 906
    Top = 83
  end
  object FDQry_valores: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'Select'
      'id_servico,'
      'preco'
      'from valores')
    Left = 1000
    Top = 57
    object FDQry_valoresid_servico: TIntegerField
      FieldName = 'id_servico'
      Origin = 'id_servico'
    end
    object FDQry_valorespreco: TFloatField
      FieldName = 'preco'
      Origin = 'preco'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
end
