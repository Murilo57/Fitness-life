unit Financial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls, ComCtrls, Grids, DBGrids, Mask, DBCtrls;

type
  TfrmFinancial = class(TForm)
    pnlTop: TPanel;
    Panel2: TPanel;
    btnSair: TSpeedButton;
    lbFinancial: TLabel;
    pnImg: TPanel;
    imgFinancial: TImage;
    pnCentro: TPanel;
    pgCenter: TPageControl;
    tbQuery: TTabSheet;
    tbRegister: TTabSheet;
    pnFilter: TPanel;
    gFinancial: TDBGrid;
    Bevel1: TBevel;
    cbConsulta1: TComboBox;
    cbConsulta2: TComboBox;
    Label1: TLabel;
    edConsulta2: TEdit;
    edConsulta1: TEdit;
    Panel1: TPanel;
    Panel3: TPanel;
    bvButtons: TBevel;
    bvRegister: TBevel;
    edName: TDBEdit;
    edID: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFinancial: TfrmFinancial;

implementation

uses DmConection;

{$R *.dfm}

procedure TfrmFinancial.btnSairClick(Sender: TObject);
begin
  frmFinancial.Close;
  frmFinancial := nil;
end;

end.
