﻿inherited Frm_CadService: TFrm_CadService
  Caption = 'Cadastrar Servi'#231'os'
  ClientHeight = 469
  ClientWidth = 415
  Position = poScreenCenter
  ExplicitWidth = 415
  ExplicitHeight = 469
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 415
    Color = clGradientActiveCaption
    ExplicitWidth = 399
    inherited Label1: TLabel
      Left = 168
      Top = 16
      Width = 76
      Caption = 'Servi'#231'os'
      ExplicitLeft = 168
      ExplicitTop = 16
      ExplicitWidth = 76
    end
    object Label5: TLabel
      Left = 16
      Top = 22
      Width = 8
      Height = 13
      Caption = 'id'
      FocusControl = DBEdit1
    end
    object DBEdit1: TDBEdit
      Left = 30
      Top = 19
      Width = 41
      Height = 21
      Color = clSilver
      DataField = 'id'
      DataSource = DS_Cad
      ReadOnly = True
      TabOrder = 0
    end
  end
  inherited Panel2: TPanel
    Width = 415
    Height = 404
    ExplicitWidth = 399
    ExplicitHeight = 357
    inherited Panel3: TPanel
      Top = 89
      Width = 413
      Align = alTop
      Color = cl3DLight
      ExplicitTop = 89
      ExplicitWidth = 397
      inherited ToolBar1: TToolBar
        Width = 411
        Height = 34
        Color = clNone
        ParentColor = False
        ParentShowHint = False
        ShowHint = True
        ExplicitWidth = 395
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
      Width = 413
      Height = 88
      Align = alTop
      ExplicitWidth = 397
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
        Top = 43
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
      Top = 362
      Width = 413
      Height = 41
      Align = alBottom
      Color = cl3DLight
      ParentBackground = False
      TabOrder = 2
      ExplicitTop = 315
      ExplicitWidth = 397
      object ToolBar2: TToolBar
        Left = 1
        Top = 1
        Width = 411
        Height = 40
        ButtonHeight = 40
        ButtonWidth = 40
        Caption = 'ToolBar1'
        Images = ImageList1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        ExplicitWidth = 395
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
      Width = 413
      Height = 232
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
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'id_servico'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data'
          Width = 163
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'preco'
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
    Left = 360
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
  end
  object FDQry_Valores: TFDQuery [4]
    AfterInsert = FDQry_ValoresAfterInsert
    BeforePost = FDQry_ValoresBeforePost
    Connection = DM.FDConnection
    SQL.Strings = (
      'select'
      'id,'
      'id_servico, '
      'preco, '
      'data'
      ''
      'from valores'
      'where id_servico = :id_servico'
      'order by data')
    Left = 281
    Top = 362
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
    end
    object FDQry_Valoresdata: TSQLTimeStampField
      FieldName = 'data'
      Origin = 'data'
      ProviderFlags = [pfInUpdate]
    end
  end
  object DS_Valores: TDataSource [5]
    DataSet = FDQry_Valores
    Left = 225
    Top = 362
  end
  object ActionList2: TActionList [6]
    Images = ImageList1
    Left = 345
    Top = 362
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
    Left = 321
    Top = 72
  end
  inherited ActionList1: TActionList
    Left = 233
    Top = 58
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
  object DataSource1: TDataSource
    DataSet = FDQry_Valores
    Left = 232
    Top = 281
  end
  object FDQry_Valoresab: TFDQuery
    Active = True
    Connection = DM.FDConnection
    SQL.Strings = (
      'select'
      'id,'
      'id_servico, '
      'preco, '
      'data'
      ''
      'from valores'
      'where id_servico = :id_servico'
      'order by data')
    Left = 304
    Top = 233
    ParamData = <
      item
        Name = 'ID_SERVICO'
        DataType = ftInteger
        FDDataType = dtInt64
        ParamType = ptInput
        Value = Null
      end>
  end
end
