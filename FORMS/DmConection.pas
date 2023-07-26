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
