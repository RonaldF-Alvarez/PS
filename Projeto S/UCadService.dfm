﻿inherited Frm_CadService: TFrm_CadService
  Caption = 'Cadastrar Servi'#231'os'
  ClientHeight = 459
  ClientWidth = 391
  Position = poScreenCenter
  ExplicitWidth = 407
  ExplicitHeight = 498
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 391
    Color = clGradientActiveCaption
    ExplicitWidth = 391
    inherited Label1: TLabel
      Left = 101
      Top = 19
      Width = 195
      Caption = 'Cadastro de Servi'#231'os'
      ExplicitLeft = 101
      ExplicitTop = 19
      ExplicitWidth = 195
    end
    object Label5: TLabel
      Left = 31
      Top = 9
      Width = 23
      Height = 13
      Caption = 'C'#243'd.'
      FocusControl = DBEdit1
    end
    object DBEdit1: TDBEdit
      Left = 31
      Top = 23
      Width = 51
      Height = 21
      Color = clInfoBk
      DataField = 'id'
      DataSource = DS_Cad
      ReadOnly = True
      TabOrder = 0
    end
  end
  inherited Panel2: TPanel
    Width = 391
    Height = 394
    ExplicitWidth = 391
    ExplicitHeight = 394
    inherited Panel3: TPanel
      Top = 89
      Width = 389
      Align = alTop
      Color = cl3DLight
      ExplicitTop = 89
      ExplicitWidth = 389
      inherited ToolBar1: TToolBar
        Width = 387
        Height = 34
        Color = clNone
        ParentColor = False
        ParentShowHint = False
        ShowHint = True
        ExplicitWidth = 387
        ExplicitHeight = 34
        inherited ToolButton5: TToolButton
          Hint = 'Primeiro'
          Action = DatasetFirst1
        end
        inherited Ultimo: TToolButton
          Action = DataSetLast2
        end
      end
    end
    inherited Panel4: TPanel
      Width = 389
      Height = 88
      Align = alTop
      ExplicitTop = 1
      ExplicitWidth = 389
      ExplicitHeight = 88
      object Label2: TLabel
        Left = 30
        Top = 8
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object Label3: TLabel
        Left = 30
        Top = 45
        Width = 98
        Height = 13
        Caption = 'Descri'#231#227'o do servi'#231'o'
      end
      object DBEdit2: TDBEdit
        Left = 29
        Top = 20
        Width = 252
        Height = 21
        DataField = 'nome'
        DataSource = DS_Cad
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 29
        Top = 58
        Width = 340
        Height = 21
        DataField = 'descricao'
        DataSource = DS_Cad
        TabOrder = 1
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 352
      Width = 389
      Height = 41
      Align = alBottom
      Color = clGradientActiveCaption
      ParentBackground = False
      TabOrder = 2
      object ToolBar2: TToolBar
        Left = 1
        Top = 1
        Width = 387
        Height = 40
        ButtonHeight = 40
        ButtonWidth = 40
        Caption = 'ToolBar1'
        Images = ImageList1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object Inserir2: TToolButton
          Left = 0
          Top = 0
          Hint = 'Inserir'
          Action = DataSetInsert2
          ParentShowHint = False
          ShowHint = True
        end
        object Editar2: TToolButton
          Left = 40
          Top = 0
          Hint = 'Editar'
          Action = DataSetEdit2
          ParentShowHint = False
          ShowHint = True
        end
        object Cancelar2: TToolButton
          Left = 80
          Top = 0
          Hint = 'Cancelar'
          Action = DataSetCancel2
          ParentShowHint = False
          ShowHint = True
        end
        object Enviar2: TToolButton
          Left = 120
          Top = 0
          Hint = 'Enviar'
          Action = DataSetPost2
          ParentShowHint = False
          ShowHint = True
        end
        object Deletar2: TToolButton
          Left = 160
          Top = 0
          Hint = 'Deletar'
          Action = DataSetDelete2
          ParentShowHint = False
          ShowHint = True
        end
        object Inv: TToolButton
          Left = 200
          Top = 0
          Width = 40
          Caption = 'ToolButton5'
          ImageIndex = 4
          ParentShowHint = False
          ShowHint = True
          Style = tbsSeparator
        end
        object Próximo: TToolButton
          Left = 240
          Top = 0
          Action = DataSetFirst2
          ParentShowHint = False
          ShowHint = True
        end
        object ToolButton1: TToolButton
          Left = 280
          Top = 0
          Action = DataSetPrior2
        end
        object ToolButton2: TToolButton
          Left = 320
          Top = 0
          Action = DataSetNext2
        end
        object ToolButton3: TToolButton
          Left = 360
          Top = 0
          Action = DataSetLast2
        end
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 130
      Width = 389
      Height = 222
      Align = alClient
      DataSource = DS_Valores
      FixedColor = clMedGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Title.Caption = 'Cod.'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data'
          Title.Caption = 'Data de cria'#231#227'o'
          Width = 187
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'preco'
          Title.Caption = 'Pre'#231'o'
          Width = 137
          Visible = True
        end>
    end
  end
  inherited FDQry_Cadastro: TFDQuery
    AfterPost = FDQry_CadastroAfterPost
    SQL.Strings = (
      'select'
      'id,'
      'nome,'
      'descricao'
      'from servicos'
      'order by id')
    Left = 352
    object FDQry_Cadastroid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
    end
    object FDQry_Cadastronome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object FDQry_Cadastrodescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 200
    end
  end
  inherited DS_Cad: TDataSource
    OnDataChange = DS_CadDataChange
    Left = 304
  end
  object FDQry_Valores: TFDQuery [4]
    AfterInsert = FDQry_ValoresAfterInsert
    BeforePost = FDQry_ValoresBeforePost
    Connection = DM.FDConnection
    SQL.Strings = (
      'select'
      'V.id,'
      'V.id_servico, '
      'V.preco, '
      'V.data'
      'from valores as V'
      'where id_servico = :id_servico'
      'order by data')
    Left = 25
    Top = 282
    ParamData = <
      item
        Name = 'ID_SERVICO'
        DataType = ftInteger
        FDDataType = dtInt64
        ParamType = ptInput
        Value = Null
      end>
    object FDQry_Valoresid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQry_Valoresid_servico: TIntegerField
      FieldName = 'id_servico'
      Origin = 'id_servico'
    end
    object FDQry_Valorespreco: TFloatField
      FieldName = 'preco'
      Origin = 'preco'
      DisplayFormat = '#,##0.00'
    end
    object FDQry_Valoresdata: TSQLTimeStampField
      FieldName = 'data'
      Origin = 'data'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DS_Valores: TDataSource [5]
    DataSet = FDQry_Valores
    Enabled = False
    Left = 25
    Top = 330
  end
  object ActionList2: TActionList [6]
    Images = ImageList1
    Left = 25
    Top = 234
    object DataSetPrior2: TDataSetPrior
      Category = 'Dataset'
      Caption = 'Anterior'
      Hint = 'Prior'
      ImageIndex = 1
      DataSource = DS_Valores
    end
    object DataSetNext2: TDataSetNext
      Category = 'Dataset'
      Caption = 'Proximo'
      Hint = 'Next'
      ImageIndex = 2
      DataSource = DS_Valores
    end
    object DataSetLast2: TDataSetLast
      Category = 'Dataset'
      Caption = 'Ultimo'
      Hint = 'Last'
      ImageIndex = 3
      DataSource = DS_Valores
    end
    object DataSetInsert2: TDataSetInsert
      Category = 'Dataset'
      Caption = 'Inserir'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = DS_Valores
    end
    object DataSetDelete2: TDataSetDelete
      Category = 'Dataset'
      Caption = 'Deletar'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = DS_Valores
    end
    object DataSetEdit2: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Editar'
      Hint = 'Edit'
      ImageIndex = 6
      DataSource = DS_Valores
    end
    object DataSetPost2: TDataSetPost
      Category = 'Dataset'
      Caption = 'Enviar'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = DS_Valores
    end
    object DataSetCancel2: TDataSetCancel
      Category = 'Dataset'
      Caption = 'Cancelar'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = DS_Valores
    end
    object DataSetRefresh2: TDataSetRefresh
      Category = 'Dataset'
      Caption = '&Refresh'
      Hint = 'Refresh'
      ImageIndex = 9
      DataSource = DS_Valores
    end
    object DataSetFirst2: TDataSetFirst
      Category = 'Dataset'
      Caption = 'Primeiro'
      Hint = 'First'
      ImageIndex = 0
      DataSource = DS_Valores
    end
  end
  inherited ImageList1: TImageList
    Top = 72
  end
  inherited ActionList1: TActionList
    Left = 257
    Top = 18
    inherited DatasetLast1: TDataSetLast [0]
    end
    inherited DatasetNext1: TDataSetNext [1]
    end
    inherited DatasetInsert1: TDataSetInsert [2]
    end
    inherited DatasetDelete1: TDataSetDelete [3]
    end
    inherited DatasetEdit1: TDataSetEdit [4]
    end
    inherited DatasetPost1: TDataSetPost [5]
    end
    inherited DatasetCancel1: TDataSetCancel [6]
    end
    inherited DatasetFirst1: TDataSetFirst [7]
    end
    inherited DatasetRefresh1: TDataSetRefresh [8]
    end
    inherited DatasetPrior1: TDataSetPrior [9]
    end
  end
end
