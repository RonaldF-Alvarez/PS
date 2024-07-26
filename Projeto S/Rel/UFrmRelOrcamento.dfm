object FrmRelOrc: TFrmRelOrc
  Left = 0
  Top = 0
  Caption = 'FrmRelOrc'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object RelReportOrcamento: TfrxReport
    Version = '2024.2.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45488.799877662000000000
    ReportOptions.LastChange = 45495.955389884260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 344
    Top = 176
    Datasets = <
      item
        DataSet = DSReportOrc
        DataSetName = 'DSOrcamento'
      end
      item
        DataSet = DSReportOrcItem
        DataSetName = 'DSOrcamentoItem'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 98.267781670000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362385220000000000
          Top = 7.559059960000000000
          Width = 117.165430730000000000
          Height = 30.236241670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Or'#231'amento')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 37.795299530000000000
          Top = 37.795301200000000000
          Width = 646.299610140000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 45.354360000000000000
          Width = 94.488250730000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            'Or'#231'amento N'#186':')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 79.370130000000000000
          Width = 34.015770730000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            'Seq')
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 68.031540000000000000
          Width = 646.299610140000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 79.370130000000000000
          Width = 340.157700730000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 432.850650000000000000
          Top = 79.370130000000000000
          Width = 79.370130730000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            'Qtd')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 519.779840000000000000
          Top = 79.370130000000000000
          Width = 79.370130730000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor unit')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 608.504330000000000000
          Top = 79.370130000000000000
          Width = 75.590600730000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor total')
        end
        object DSOrcamentocod: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 45.354360000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'cod'
          DataSet = DSReportOrc
          DataSetName = 'DSOrcamento'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSOrcamento."cod"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 68.031540000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 31.574830000000000000
          Width = 646.299610140000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 39.133890000000000000
          Width = 94.488250730000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 413.189241130000000000
          Top = 5.559060570000000000
          Width = 151.181170210000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Total do or'#231'amento :')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Width = 646.299610140000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 19.574830000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        DataSet = DSReportOrcItem
        DataSetName = 'DSOrcamentoItem'
        RowCount = 0
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 1.063477510000000000
          Width = 24.885197590000000000
          Height = 22.613691220000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
        end
        object DSOrcamentoItemvalor_unid: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 519.999583080000000000
          Top = -1.322816010000000000
          Width = 80.742636380000000000
          Height = 22.613698070000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = DSReportOrcItem
          DataSetName = 'DSOrcamentoItem'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSOrcamentoItem."valor_unid"]')
          ParentFont = False
        end
        object DSOrcamentoItemquantidade: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 432.477416700000000000
          Top = -1.015766010000000000
          Width = 80.742636380000000000
          Height = 22.613698070000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'quantidade'
          DataSet = DSReportOrcItem
          DataSetName = 'DSOrcamentoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSOrcamentoItem."quantidade"]')
          ParentFont = False
        end
        object DSOrcamentoItemservico_nome: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 82.578147590000000000
          Top = -0.795296010000000000
          Width = 343.340209110000000000
          Height = 22.613698070000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'servico_nome'
          DataSet = DSReportOrcItem
          DataSetName = 'DSOrcamentoItem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSOrcamentoItem."servico_nome"]')
          ParentFont = False
        end
        object DSOrcamentoItemcalc_total_unidade: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 609.080809460000000000
          Top = -0.629472490000000000
          Width = 75.014138310000000000
          Height = 22.613698070000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataSet = DSReportOrcItem
          DataSetName = 'DSOrcamentoItem'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSOrcamentoItem."calc_total_unidade"]')
          ParentFont = False
        end
      end
    end
  end
  object DSReportOrc: TfrxDBDataset
    UserName = 'DSOrcamento'
    CloseDataSource = False
    DataSet = FDQry_ReportOrcamento
    BCDToCurrency = False
    DataSetOptions = []
    Left = 444
    Top = 106
    FieldDefs = <
      item
        FieldName = 'cod'
      end
      item
        FieldName = 'cod_cliente'
      end
      item
        FieldName = 'data_orcamento'
      end
      item
        FieldName = 'status'
      end
      item
        FieldName = 'contratantes_nome'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'contratantes_cpf'
        FieldType = fftString
        Size = 14
      end
      item
        FieldName = 'contratantes_telefone'
        FieldType = fftString
        Size = 11
      end>
  end
  object FDQry_ReportOrcamento: TFDQuery
    Active = True
    BeforeOpen = FDQry_ReportOrcamentoBeforeOpen
    Connection = DM.FDConnection
    SQL.Strings = (
      'Select'
      'O.cod,'
      'O.cod_cliente,'
      'O.data_orcamento,'
      'O.status,'
      'C.nome as contratantes_Nome,'
      'C.CPF_CNPJ as contratantes_CPF,'
      'C.telefone as contratantes_telefone'
      ''
      'from Orcamentos as O'
      'left join contratantes C on(C.cod=O.cod_cliente)'
      ''
      ' Order by O.cod, O.data_orcamento')
    Left = 544
    Top = 8
    object FDQry_ReportOrcamentocod: TIntegerField
      FieldName = 'cod'
      Origin = 'cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQry_ReportOrcamentocod_cliente: TIntegerField
      FieldName = 'cod_cliente'
      Origin = 'cod_cliente'
    end
    object FDQry_ReportOrcamentodata_orcamento: TSQLTimeStampField
      FieldName = 'data_orcamento'
      Origin = 'data_orcamento'
      ProviderFlags = [pfInUpdate]
    end
    object FDQry_ReportOrcamentostatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object FDQry_ReportOrcamentocontratantes_nome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'contratantes_nome'
      Origin = 'contratantes_nome'
      Size = 100
    end
    object FDQry_ReportOrcamentocontratantes_cpf: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'contratantes_cpf'
      Origin = 'contratantes_cpf'
      Size = 14
    end
    object FDQry_ReportOrcamentocontratantes_telefone: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'contratantes_telefone'
      Origin = 'contratantes_telefone'
      Size = 11
    end
  end
  object DS_ReportOrcamento: TDataSource
    DataSet = FDQry_ReportOrcamento
    Left = 491
    Top = 58
  end
  object DSReportOrcItem: TfrxDBDataset
    UserName = 'DSOrcamentoItem'
    CloseDataSource = False
    DataSet = FDQry_ReportOrcamentoItem
    BCDToCurrency = False
    DataSetOptions = []
    Left = 413
    Top = 270
    FieldDefs = <
      item
        FieldName = 'cod_orcamento'
      end
      item
        FieldName = 'id_servico'
      end
      item
        FieldName = 'quantidade'
      end
      item
        FieldName = 'valor_unid'
      end
      item
        FieldName = 'servico_nome'
        FieldType = fftString
        Size = 50
      end
      item
        FieldName = 'calc_total_unidade'
      end>
  end
  object FDQry_ReportOrcamentoItem: TFDQuery
    BeforeOpen = FDQry_ReportOrcamentoBeforeOpen
    OnCalcFields = FDQry_ReportOrcamentoItemCalcFields
    Connection = DM.FDConnection
    SQL.Strings = (
      'SELECT '
      '  oi.cod_orcamento,'
      '  oi.id_servico,'
      '  oi.quantidade,'
      '  oi.valor_unid,'
      '  s.nome as servico_nome'
      'FROM '
      '  orcamento_itens oi'
      'LEFT JOIN'
      '  servicos s ON oi.id_servico = s.id'
      'WHERE'
      '  oi.cod_orcamento = :cod_orcamento')
    Left = 528
    Top = 368
    ParamData = <
      item
        Name = 'COD_ORCAMENTO'
        ParamType = ptInput
        Value = Null
      end>
    object FDQry_ReportOrcamentoItemcod_orcamento: TIntegerField
      FieldName = 'cod_orcamento'
      Origin = 'cod_orcamento'
    end
    object FDQry_ReportOrcamentoItemid_servico: TIntegerField
      FieldName = 'id_servico'
      Origin = 'id_servico'
    end
    object FDQry_ReportOrcamentoItemquantidade: TIntegerField
      FieldName = 'quantidade'
      Origin = 'quantidade'
    end
    object FDQry_ReportOrcamentoItemvalor_unid: TFloatField
      FieldName = 'valor_unid'
      Origin = 'valor_unid'
    end
    object FDQry_ReportOrcamentoItemservico_nome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'servico_nome'
      Origin = 'servico_nome'
      Size = 50
    end
    object FDQry_ReportOrcamentoItemcalc_total_unidade: TFloatField
      FieldKind = fkCalculated
      FieldName = 'calc_total_unidade'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
  end
  object DS_ReportOrcamentoItem: TDataSource
    DataSet = FDQry_ReportOrcamentoItem
    Left = 469
    Top = 319
  end
end
