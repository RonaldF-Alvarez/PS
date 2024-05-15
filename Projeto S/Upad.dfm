inherited Frm_Cad: TFrm_Cad
  Caption = 'Frm_Cad'
  TextHeight = 13
  inherited Panel1: TPanel
    ExplicitWidth = 516
  end
  inherited Panel2: TPanel
    ExplicitWidth = 516
    ExplicitHeight = 210
    inherited Panel3: TPanel
      Top = 168
      Width = 514
      ExplicitTop = 168
      ExplicitWidth = 514
      inherited DBNavigator2: TDBNavigator
        Hints.Strings = ()
      end
    end
    inherited Panel4: TPanel
      Width = 514
      Height = 167
      ExplicitWidth = 514
      ExplicitHeight = 167
      inherited DBNavigator1: TDBNavigator
        Height = 165
        Hints.Strings = ()
        ExplicitHeight = 165
      end
      object DBComboBox1: TDBComboBox
        Left = 160
        Top = 64
        Width = 145
        Height = 21
        DataField = 'id'
        DataSource = DS_CadCont
        TabOrder = 1
      end
    end
  end
  inherited FDQry_Cadastro: TFDQuery
    Active = True
    SQL.Strings = (
      'select * from servicos')
  end
end
