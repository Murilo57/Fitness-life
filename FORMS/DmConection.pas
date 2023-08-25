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
    sqlFinancial: TSQLDataSet;
    dspFinancial: TDataSetProvider;
    cdsFinancial: TClientDataSet;
    dtsFinancial: TDataSource;
    sqlFinancialID: TIntegerField;
    sqlFinancialID_CLIENT: TIntegerField;
    sqlFinancialNAME: TStringField;
    sqlFinancialMONTH_PAY: TFMTBCDField;
    cdsFinancialID: TIntegerField;
    cdsFinancialID_CLIENT: TIntegerField;
    cdsFinancialNAME: TStringField;
    cdsFinancialMONTH_PAY: TFMTBCDField;
    sqlRegisFinancial: TSQLDataSet;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    StringField7: TStringField;
    FMTBCDField3: TFMTBCDField;
    dspRegisFinancial: TDataSetProvider;
    cdsRegisFinancial: TClientDataSet;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    StringField8: TStringField;
    FMTBCDField4: TFMTBCDField;
    dtsRegisFinancial: TDataSource;
    sqlRegisFinancialDATE_REGIS: TDateField;
    sqlRegisFinancialDATE_PAYMENT: TDateField;
    cdsRegisFinancialDATE_REGIS: TDateField;
    cdsRegisFinancialDATE_PAYMENT: TDateField;
    sqlFinancialDATE_REGIS: TDateField;
    sqlFinancialDATE_PAYMENT: TDateField;
    cdsFinancialDATE_REGIS: TDateField;
    cdsFinancialDATE_PAYMENT: TDateField;
    sqlRegisFinancialVALUE: TFMTBCDField;
    cdsRegisFinancialVALUE: TFMTBCDField;
    sqlFinancialVALUE: TFMTBCDField;
    cdsFinancialVALUE: TFMTBCDField;
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
