object Frm_CadGroup: TFrm_CadGroup
  Left = 0
  Top = 0
  Caption = 'Frm_CadGroup'
  ClientHeight = 767
  ClientWidth = 653
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 720
    Width = 653
    Height = 47
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitTop = 719
    ExplicitWidth = 649
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 653
    Height = 65
    Align = alTop
    Caption = 'Panel3'
    TabOrder = 1
    ExplicitWidth = 649
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 653
    Height = 655
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 2
    ExplicitTop = 41
    object DBGrid1: TDBGrid
      Left = 1
      Top = 98
      Width = 651
      Height = 556
      Align = alClient
      DataSource = DataSource2
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'descricao'
          Title.Caption = 'Descri'#231#227'o'
          Width = 551
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'id_servico'
          Title.Caption = 'C'#243'd.Servi'#231'o'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'id'
          Visible = False
        end>
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 651
      Height = 97
      Align = alTop
      Caption = 'Adicionar Dados'
      TabOrder = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 641
      object Label1: TLabel
        Left = 17
        Top = 29
        Width = 90
        Height = 15
        Caption = 'Descri'#231#227'o Grupo:'
      end
      object Label2: TLabel
        Left = 20
        Top = 59
        Width = 51
        Height = 15
        Caption = 'Grupo n'#176':'
      end
      object BitBtn1: TBitBtn
        Left = 555
        Top = 55
        Width = 73
        Height = 25
        Caption = 'Adicionar '
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object DBComboBox1: TDBLookupComboBox
        Left = 113
        Top = 55
        Width = 436
        Height = 23
        KeyField = 'id'
        ListField = 'descricao'
        ListSource = DataSource1
        TabOrder = 1
      end
      object EditNomegrupo: TEdit
        Left = 113
        Top = 26
        Width = 515
        Height = 23
        TabOrder = 2
      end
      object Edit2: TEdit
        Left = 77
        Top = 55
        Width = 30
        Height = 23
        TabOrder = 3
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 528
    Top = 8
  end
  object FDQuery1: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'SELECT id, nome, descricao FROM servicos')
    Left = 376
    Top = 8
  end
  object FDQuery2: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'SELECT * FROM servicos'
      ' WHERE id = :id')
    Left = 432
    Top = 8
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
        Value = Null
      end>
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 568
    Top = 8
  end
  object FDQuery3: TFDQuery
    Connection = DM.FDConnection
    Left = 472
    Top = 8
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 608
    Top = 8
  end
end
