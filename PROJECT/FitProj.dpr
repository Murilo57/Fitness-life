program FitProj;

uses
  Forms,
  Menu in '..\FORMS\Menu.pas' {frmMenu},
  ULogin in '..\FORMS\ULogin.pas' {FrmLogin},
  DmConection in '..\FORMS\DmConection.pas' {dm: TDataModule},
  CadClient in '..\FORMS\CadClient.pas' {frmCadClient},
  Financial in '..\FORMS\Financial.pas' {frmFinancial};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmFinancial, frmFinancial);
  Application.Run;
end.
