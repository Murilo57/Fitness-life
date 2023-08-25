unit Financial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls, ComCtrls, Grids, DBGrids;

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
    DBGrid1: TDBGrid;
    Bevel1: TBevel;
    cbConsulta1: TComboBox;
    cbConsulta2: TComboBox;
    Label1: TLabel;
    edConsulta2: TEdit;
    edConsulta1: TEdit;
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFinancial: TfrmFinancial;

implementation

{$R *.dfm}

procedure TfrmFinancial.btnSairClick(Sender: TObject);
begin
  frmFinancial.Close;
  frmFinancial := nil;
end;

end.