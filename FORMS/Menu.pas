unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, Buttons, Menus;

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
    btnSair: TSpeedButton;
    pnlUser: TPanel;
    Panel1: TPanel;
    imgLogoUser: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

end.
