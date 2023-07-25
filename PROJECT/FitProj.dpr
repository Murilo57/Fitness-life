program FitProj;

uses
  Forms,
  Menu in '..\FORMS\Menu.pas' {frmMenu};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.Run;
end.
