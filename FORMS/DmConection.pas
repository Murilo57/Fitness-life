unit DmConection;

interface

uses
  SysUtils, Classes, DBXpress, FMTBcd, Provider, SqlExpr, DB, DBClient;

type
  Tdm = class(TDataModule)
    dtsLogin: TDataSource;
    conexao: TSQLConnection;
    cdsLogin: TClientDataSet;
    sqlLogin: TSQLDataSet;
    dspLogin: TDataSetProvider;
    sqlLoginID: TIntegerField;
    sqlLoginNAME: TStringField;
    sqlLoginLOGIN: TStringField;
    sqlLoginPASSWORD: TStringField;
    sqlLoginLEVEL: TStringField;
    cdsLoginID: TIntegerField;
    cdsLoginNAME: TStringField;
    cdsLoginLOGIN: TStringField;
    cdsLoginPASSWORD: TStringField;
    cdsLoginLEVEL: TStringField;
    dspClient: TDataSetProvider;
    sqlClient: TSQLDataSet;
    cdsClient: TClientDataSet;
    dtsClient: TDataSource;
    sqlClientID: TIntegerField;
    sqlClientNAME: TStringField;
    sqlClientDATACAD: TDateField;
    sqlClientAGE: TIntegerField;
    sqlClientSEX: TStringField;
    sqlClientCPF: TStringField;
    sqlClientMONTH_PAYMENT: TFMTBCDField;
    sqlClientWEIGHT: TFloatField;
    sqlClientHEIGHT: TFloatField;
    cdsClientID: TIntegerField;
    cdsClientNAME: TStringField;
    cdsClientDATACAD: TDateField;
    cdsClientAGE: TIntegerField;
    cdsClientSEX: TStringField;
    cdsClientCPF: TStringField;
    cdsClientMONTH_PAYMENT: TFMTBCDField;
    cdsClientWEIGHT: TFloatField;
    cdsClientHEIGHT: TFloatField;
    sqlListClient: TSQLDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    DateField1: TDateField;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    FMTBCDField1: TFMTBCDField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    cdsListClient: TClientDataSet;
    IntegerField3: TIntegerField;
    StringField4: TStringField;
    DateField2: TDateField;
    IntegerField4: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    FMTBCDField2: TFMTBCDField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    dtsListClient: TDataSource;
    dspListClient: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

end.
