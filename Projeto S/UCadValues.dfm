inherited Frm_CadValues: TFrm_CadValues
  Caption = 'Cadastro de Valores'
  ClientHeight = 304
  ClientWidth = 512
  Position = poScreenCenter
  ExplicitWidth = 512
  ExplicitHeight = 304
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 512
    ExplicitWidth = 495
    inherited Label1: TLabel
      Width = 68
      Caption = 'Valores'
      ExplicitWidth = 68
    end
  end
  inherited Panel2: TPanel
    Width = 512
    Height = 239
    ExplicitWidth = 495
    ExplicitHeight = 200
    inherited Panel3: TPanel
      Top = 197
      Width = 510
      ExplicitTop = 158
      ExplicitWidth = 493
    end
    inherited Panel4: TPanel
      Width = 510
      Height = 196
      Cursor = crArrow
      ExplicitWidth = 493
      ExplicitHeight = 157
      object Label2: TLabel
        Left = 149
        Top = 41
        Width = 87
        Height = 13
        Caption = 'Selecionar Servi'#231'o'
      end
      object Label3: TLabel
        Left = 149
        Top = 78
        Width = 27
        Height = 13
        Caption = 'Pre'#231'o'
      end
      object Edit2: TEdit
        Left = 147
        Top = 92
        Width = 145
        Height = 21
        TabOrder = 0
      end
      object DBLookupComboBox: TDBLookupComboBox
        Left = 147
        Top = 55
        Width = 145
        Height = 21
        TabOrder = 1
      end
    end
  end
  inherited FDQry_Cadastro: TFDQuery
    BeforePost = FDQry_CadastroBeforePost
    SQL.Strings = (
      'select '
      'id_servico,'
      'preco'
      ''
      'from valores')
    Left = 384
    object FDQry_Cadastroid_servico: TIntegerField
      FieldName = 'id_servico'
      Origin = 'id_servico'
    end
    object FDQry_Cadastropreco: TFloatField
      FieldName = 'preco'
      Origin = 'preco'
    end
  end
  inherited DS_CadCont: TDataSource
    Left = 304
  end
end
