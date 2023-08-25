unit Payment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmPayment = class(TForm)
    pnlTop: TPanel;
    lbPayment: TLabel;
    pnImg: TPanel;
    imgFinancial: TImage;
    Panel2: TPanel;
    btnSair: TSpeedButton;
    btnFinancial: TSpeedButton;
    pnCentro: TPanel;
    edID: TEdit;
    edName: TEdit;
    edPayment: TEdit;
    lbID: TLabel;
    lbName: TLabel;
    lbValuePayment: TLabel;
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPayment: TfrmPayment;

implementation

{$R *.dfm}

procedure TfrmPayment.btnSairClick(Sender: TObject);
begin
  frmPayment.Close;
  frmPayment := nil;
end;

end.
