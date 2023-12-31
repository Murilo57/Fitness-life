unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, Buttons, Menus, StdCtrls;

type
  TfrmMenu = class(TForm)
    pnlCenter: TPanel;
    imgBackGround: TImage;
    pnlButtons: TPanel;
    btnClient: TSpeedButton;
    btnFinancial: TSpeedButton;
    btnSheet: TSpeedButton;
    btnPerfomance: TSpeedButton;
    pnlTop: TPanel;
    Menu: TMainMenu;
    teste1: TMenuItem;
    btnExit: TSpeedButton;
    pnlUser: TPanel;
    Panel1: TPanel;
    imgLogoUser: TImage;
    lbUser: TLabel;
    lbWelcome: TLabel;
    btnUsers: TSpeedButton;
    lbLevel: TLabel;
    procedure btnFinancialClick(Sender: TObject);
    procedure btnClientClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

uses DmConection, CadClient, Financial;

{$R *.dfm}

procedure TfrmMenu.btnClientClick(Sender: TObject);
begin
  frmCadClient := TfrmCadClient.Create(nil);
  frmCadClient.ShowModal;
end;

procedure TfrmMenu.btnExitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMenu.btnFinancialClick(Sender: TObject);
begin
  frmFinancial := TfrmFinancial.create(nil);
  frmFinancial.ShowModal;
end;

procedure TfrmMenu.FormShow(Sender: TObject);
begin
  lbUser.Caption := dm.cdsLoginNAME.AsString;
  lbLevel.Caption := dm.cdsLoginLEVEL.AsString;
end;

end.
