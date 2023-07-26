object dm: Tdm
  OldCreateOrder = False
  Height = 325
  Width = 404
  object dtsLogin: TDataSource
    DataSet = cdsLogin
    Left = 136
    Top = 80
  end
  object conexao: TSQLConnection
    ConnectionName = 'IBConnection'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint30.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      
        'Database=localhost:\Users\user\OneDrive\Documentos\GitHub\Fitnes' +
        's-life\EXE\DADOS\FITNESSLIFE.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=True')
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 24
    Top = 16
  end
  object cdsLogin: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLogin'
    Left = 104
    Top = 80
    object cdsLoginID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsLoginNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 30
    end
    object cdsLoginLOGIN: TStringField
      FieldName = 'LOGIN'
      Required = True
      Size = 30
    end
    object cdsLoginPASSWORD: TStringField
      FieldName = 'PASSWORD'
      Required = True
      Size = 50
    end
    object cdsLoginLEVEL: TStringField
      FieldName = 'LEVEL'
    end
  end
  object sqlLogin: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM CADUSER'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 40
    Top = 80
    object sqlLoginID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlLoginNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 30
    end
    object sqlLoginLOGIN: TStringField
      FieldName = 'LOGIN'
      Required = True
      Size = 30
    end
    object sqlLoginPASSWORD: TStringField
      FieldName = 'PASSWORD'
      Required = True
      Size = 50
    end
    object sqlLoginLEVEL: TStringField
      FieldName = 'LEVEL'
    end
  end
  object dspLogin: TDataSetProvider
    DataSet = sqlLogin
    Left = 72
    Top = 80
  end
  object dspClient: TDataSetProvider
    DataSet = sqlClient
    Left = 72
    Top = 136
  end
  object sqlClient: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM CLIENTS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 40
    Top = 136
    object sqlClientID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sqlClientNAME: TStringField
      FieldName = 'NAME'
      Size = 40
    end
    object sqlClientDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object sqlClientAGE: TIntegerField
      FieldName = 'AGE'
    end
    object sqlClientSEX: TStringField
      FieldName = 'SEX'
      FixedChar = True
      Size = 1
    end
    object sqlClientCPF: TStringField
      FieldName = 'CPF'
      FixedChar = True
      Size = 10
    end
    object sqlClientMONTH_PAYMENT: TFMTBCDField
      FieldName = 'MONTH_PAYMENT'
      Precision = 15
      Size = 2
    end
    object sqlClientWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object sqlClientHEIGHT: TFloatField
      FieldName = 'HEIGHT'
    end
  end
  object cdsClient: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClient'
    Left = 104
    Top = 136
    object cdsClientID: TIntegerField
      DisplayWidth = 12
      FieldName = 'ID'
      Required = True
    end
    object cdsClientNAME: TStringField
      DisplayWidth = 48
      FieldName = 'NAME'
      Size = 40
    end
    object cdsClientDATACAD: TDateField
      DisplayWidth = 12
      FieldName = 'DATACAD'
    end
    object cdsClientAGE: TIntegerField
      DisplayWidth = 9
      FieldName = 'AGE'
    end
    object cdsClientSEX: TStringField
      DisplayWidth = 4
      FieldName = 'SEX'
      FixedChar = True
      Size = 1
    end
    object cdsClientCPF: TStringField
      DisplayWidth = 16
      FieldName = 'CPF'
      FixedChar = True
      Size = 10
    end
    object cdsClientMONTH_PAYMENT: TFMTBCDField
      DisplayWidth = 19
      FieldName = 'MONTH_PAYMENT'
      Precision = 15
      Size = 2
    end
    object cdsClientWEIGHT: TFloatField
      DisplayWidth = 12
      FieldName = 'WEIGHT'
    end
    object cdsClientHEIGHT: TFloatField
      DisplayWidth = 12
      FieldName = 'HEIGHT'
    end
  end
  object dtsClient: TDataSource
    DataSet = cdsClient
    Left = 136
    Top = 136
  end
end
