inherited Frm_CadClient: TFrm_CadClient
  Caption = 'Cadastro de Clientes'
  ClientHeight = 308
  ClientWidth = 477
  Position = poScreenCenter
  ExplicitWidth = 493
  ExplicitHeight = 347
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 477
    Color = clGradientActiveCaption
    ExplicitWidth = 477
    inherited Label1: TLabel
      Left = 129
      Top = 20
      Width = 192
      Caption = 'Cadastro de Clientes'
      ExplicitLeft = 129
      ExplicitTop = 20
      ExplicitWidth = 192
    end
    object Label11: TLabel
      Left = 29
      Top = 10
      Width = 23
      Height = 13
      Caption = 'C'#243'd.'
      FocusControl = DBEdit1
    end
    object DBEdit1: TDBEdit
      Left = 28
      Top = 24
      Width = 51
      Height = 21
      Color = clInfoBk
      DataField = 'cod'
      DataSource = DS_Cad
      ReadOnly = True
      TabOrder = 0
    end
  end
  inherited Panel2: TPanel
    Width = 477
    Height = 243
    ExplicitWidth = 477
    ExplicitHeight = 243
    inherited Panel3: TPanel
      Top = 202
      Width = 475
      Height = 40
      ExplicitTop = 202
      ExplicitWidth = 475
      ExplicitHeight = 40
      inherited ToolBar1: TToolBar
        Width = 473
        ExplicitWidth = 473
        inherited ToolButton5: TToolButton
          Width = 105
          ExplicitWidth = 105
        end
        inherited Primeiro: TToolButton
          Left = 305
          ExplicitLeft = 305
        end
        inherited Anterior: TToolButton
          Left = 345
          ExplicitLeft = 345
        end
        inherited Proximo: TToolButton
          Left = 385
          ExplicitLeft = 385
        end
        inherited Ultimo: TToolButton
          Left = 425
          ExplicitLeft = 425
        end
      end
    end
    inherited Panel4: TPanel
      Width = 475
      Height = 201
      ExplicitTop = 1
      ExplicitWidth = 475
      ExplicitHeight = 201
      object Label2: TLabel
        Left = 28
        Top = 11
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object Label3: TLabel
        Left = 27
        Top = 50
        Width = 51
        Height = 13
        Caption = 'CPF/ CNPJ'
      end
      object Label4: TLabel
        Left = 152
        Top = 50
        Width = 42
        Height = 13
        Caption = 'Telefone'
      end
      object Label5: TLabel
        Left = 29
        Top = 90
        Width = 45
        Height = 13
        Caption = 'Endere'#231'o'
      end
      object Label6: TLabel
        Left = 29
        Top = 132
        Width = 65
        Height = 13
        Caption = 'Complemento'
      end
      object Label7: TLabel
        Left = 361
        Top = 130
        Width = 19
        Height = 13
        Caption = 'CEP'
      end
      object Label8: TLabel
        Left = 29
        Top = 172
        Width = 28
        Height = 13
        Caption = 'Bairro'
      end
      object Label9: TLabel
        Left = 205
        Top = 172
        Width = 33
        Height = 13
        Caption = 'Cidade'
      end
      object Label10: TLabel
        Left = 406
        Top = 172
        Width = 13
        Height = 13
        Caption = 'UF'
      end
      object DBEditNome: TDBEdit
        Left = 26
        Top = 24
        Width = 437
        Height = 21
        DataField = 'nome'
        DataSource = DS_Cad
        TabOrder = 0
      end
      object DBEditCPF: TDBEdit
        Left = 27
        Top = 63
        Width = 117
        Height = 21
        DataField = 'cpf_cnpj'
        DataSource = DS_Cad
        TabOrder = 1
      end
      object DBEditTelefone: TDBEdit
        Left = 150
        Top = 62
        Width = 124
        Height = 21
        DataField = 'telefone'
        DataSource = DS_Cad
        TabOrder = 2
      end
      object DBEditEnd: TDBEdit
        Left = 28
        Top = 103
        Width = 437
        Height = 21
        DataField = 'endereco'
        DataSource = DS_CadEnd
        TabOrder = 3
      end
      object DBEditEndComp: TDBEdit
        Left = 28
        Top = 145
        Width = 327
        Height = 21
        DataField = 'complemento'
        DataSource = DS_CadEnd
        TabOrder = 4
      end
      object DBEditEndCEP: TDBEdit
        Left = 359
        Top = 145
        Width = 105
        Height = 21
        DataField = 'cep'
        DataSource = DS_CadEnd
        TabOrder = 5
      end
      object DBEditEndBairro: TDBEdit
        Left = 27
        Top = 185
        Width = 171
        Height = 21
        DataField = 'bairro'
        DataSource = DS_CadEnd
        TabOrder = 6
      end
      object DBEditEndCidade: TDBEdit
        Left = 203
        Top = 185
        Width = 195
        Height = 21
        DataField = 'cidade'
        DataSource = DS_CadEnd
        TabOrder = 7
      end
      object DBEditEndUF: TDBEdit
        Left = 403
        Top = 185
        Width = 61
        Height = 21
        DataField = 'uf'
        DataSource = DS_CadEnd
        TabOrder = 8
      end
      object DBEdit2: TDBEdit
        Left = 96
        Top = 208
        Width = 121
        Height = 21
        DataField = 'endereco'
        DataSource = DS_CadEnd
        TabOrder = 9
      end
    end
  end
  inherited FDQry_Cadastro: TFDQuery
    BeforeInsert = FDQry_CadastroBeforeInsert
    BeforeEdit = FDQry_CadastroBeforeEdit
    BeforePost = FDQry_CadastroBeforePost
    SQL.Strings = (
      'select'
      'cod,'
      'nome,'
      'cpf_cnpj, '
      'telefone '
      ''
      ' from contratantes'
      'ORDER BY COD')
    Left = 320
    object FDQry_Cadastrocod: TIntegerField
      FieldName = 'cod'
      Origin = 'cod'
    end
    object FDQry_Cadastronome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object FDQry_Cadastrocpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      EditMask = '000\.000\.000\-##;0;_'
      Size = 14
    end
    object FDQry_Cadastrotelefone: TWideStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      EditMask = '!\(99\)00000-0000;0;_'
      Size = 11
    end
  end
  inherited DS_Cad: TDataSource
    Enabled = True
    OnDataChange = DS_CadDataChange
    Left = 256
  end
  inherited ImageList1: TImageList
    Left = 281
    Top = 120
  end
  inherited ActionList1: TActionList
    Left = 337
    Top = 121
    inherited DatasetFirst1: TDataSetFirst
      DataSource = DS_Cad
    end
    inherited DatasetLast1: TDataSetLast [2]
      DataSource = DS_Cad
    end
    inherited DatasetInsert1: TDataSetInsert [3]
      OnExecute = DatasetInsert1Execute
      DataSource = DS_Cad
    end
    inherited DatasetDelete1: TDataSetDelete [4]
      DataSource = DS_Cad
    end
    inherited DatasetEdit1: TDataSetEdit [5]
      DataSource = DS_Cad
    end
    inherited DatasetPost1: TDataSetPost [6]
      OnExecute = DatasetPost1Execute
      DataSource = DS_Cad
    end
    inherited DatasetCancel1: TDataSetCancel [7]
      DataSource = DS_Cad
    end
    inherited DatasetNext1: TDataSetNext [8]
      DataSource = DS_Cad
    end
  end
  object FDQry_Endereco: TFDQuery
    AfterInsert = FDQry_EnderecoAfterInsert
    AfterPost = FDQry_EnderecoAfterPost
    Connection = DM.FDConnection
    SQL.Strings = (
      'select'
      'cpf_cnpj,'
      'endereco,'
      'complemento, '
      'cep, '
      'bairro,'
      'cidade,'
      'uf '
      ''
      'from contratantes_endereco'
      'where cpf_cnpj = :cpf_cnpj'
      'order by cpf_cnpj')
    Left = 425
    Top = 18
    ParamData = <
      item
        Name = 'CPF_CNPJ'
        DataType = ftString
        FDDataType = dtAnsiString
        ParamType = ptInput
        Value = Null
      end>
    object FDQry_Enderecocpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 14
    end
    object FDQry_Enderecoendereco: TWideStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 100
    end
    object FDQry_Enderecocomplemento: TWideStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 100
    end
    object FDQry_Enderecocep: TWideStringField
      FieldName = 'cep'
      Origin = 'cep'
      Size = 8
    end
    object FDQry_Enderecobairro: TWideStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 50
    end
    object FDQry_Enderecocidade: TWideStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 50
    end
    object FDQry_Enderecouf: TWideStringField
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
  end
  object ActionList2: TActionList
    Images = ImageList1
    Left = 401
    Top = 121
    object DataSetFirst2: TDataSetFirst
      Category = 'Dataset'
      Caption = 'Primeiro'
      Hint = 'First'
      ImageIndex = 0
    end
    object DataSetPrior2: TDataSetPrior
      Category = 'Dataset'
      Caption = 'Anterior'
      Hint = 'Prior'
      ImageIndex = 1
    end
    object DataSetLast2: TDataSetLast
      Category = 'Dataset'
      Caption = 'Ultimo'
      Hint = 'Last'
      ImageIndex = 3
    end
    object DataSetInsert2: TDataSetInsert
      Category = 'Dataset'
      Caption = 'Inserir'
      Hint = 'Insert'
      ImageIndex = 4
    end
    object DataSetDelete2: TDataSetDelete
      Category = 'Dataset'
      Caption = 'Deletar'
      Hint = 'Delete'
      ImageIndex = 5
    end
    object DataSetEdit2: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Editar'
      Hint = 'Edit'
      ImageIndex = 6
    end
    object DataSetPost2: TDataSetPost
      Category = 'Dataset'
      Caption = 'Enviar'
      Hint = 'Post'
      ImageIndex = 7
    end
    object DataSetCancel2: TDataSetCancel
      Category = 'Dataset'
      Caption = 'Cancelar'
      Hint = 'Cancel'
      ImageIndex = 8
    end
    object DataSetNext2: TDataSetNext
      Category = 'Dataset'
      Caption = 'Proximo'
      Hint = 'Next'
      ImageIndex = 2
    end
    object DataSetRefresh2: TDataSetRefresh
      Category = 'Dataset'
      Caption = '&Refresh'
      Hint = 'Refresh'
      ImageIndex = 10
    end
  end
  object DS_CadEnd: TDataSource
    DataSet = FDQry_Endereco
    Left = 385
    Top = 18
  end
end
