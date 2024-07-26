object DM: TDM
  OnCreate = DataModuleCreate
  Height = 298
  Width = 525
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files (x86)\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 85
    Top = 33
  end
  object FDQry_Contador: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select'
      #9'cod,'
      #9'nome,'
      #9'cpf_cnpj, '
      #9'telefone '
      ''
      ' from contratantes')
    Left = 400
    Top = 72
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=DBSERV'
      'User_Name=postgres'
      'Password=2581379'
      'DriverID=PG')
    Left = 160
    Top = 56
  end
end
