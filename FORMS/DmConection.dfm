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
end