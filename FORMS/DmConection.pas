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
