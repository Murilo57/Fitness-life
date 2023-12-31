unit CadClient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Grids, DBGrids, Mask, DBCtrls,
  frxpngimage, Buttons;

type
  TfrmCadClient = class(TForm)
    PageControl: TPageControl;
    tbQueryClient: TTabSheet;
    pnlTop: TPanel;
    lblTittle: TLabel;
    pnFilter: TPanel;
    gridClients: TDBGrid;
    Bevel1: TBevel;
    edQuery: TDBEdit;
    edStartDate: TDBEdit;
    edEndDate: TDBEdit;
    Bevel2: TBevel;
    lbFilter: TLabel;
    lbStartDate: TLabel;
    lbEndDate: TLabel;
    cbQuery: TComboBox;
    tbRegister: TTabSheet;
    pnRegisters: TPanel;
    pnButtons: TPanel;
    bvRegister: TBevel;
    lbCode: TLabel;
    edID: TDBEdit;
    lbName: TLabel;
    edName: TDBEdit;
    lbDateRegister: TLabel;
    edRegistrationDate: TDBEdit;
    lbAge: TLabel;
    edAge: TDBEdit;
    lbSex: TLabel;
    edSex: TDBEdit;
    lbCPF: TLabel;
    DBEdit6: TDBEdit;
    lbMonthPaymenth: TLabel;
    DBEdit7: TDBEdit;
    lbWeight: TLabel;
    DBEdit8: TDBEdit;
    lbHeight: TLabel;
    DBEdit9: TDBEdit;
    Panel1: TPanel;
    Image1: TImage;
    btnCancel: TBitBtn;
    btnNewClient: TBitBtn;
    btnChangeRegis: TBitBtn;
    btnSave: TBitBtn;
    btnDelete: TBitBtn;
    procedure btnDeleteClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnChangeRegisClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnNewClientClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadClient: TfrmCadClient;

implementation

uses DmConection;

{$R *.dfm}

procedure TfrmCadClient.btnCancelClick(Sender: TObject);
begin
  dm.cdsClient.CancelUpdates;
end;

procedure TfrmCadClient.btnChangeRegisClick(Sender: TObject);
begin
  dm.cdsClient.Edit;
end;

procedure TfrmCadClient.btnDeleteClick(Sender: TObject);
begin
  dm.cdsClient.Delete;
end;

procedure TfrmCadClient.btnNewClientClick(Sender: TObject);
var
  proximo: Integer;
begin
  if dm.cdsClientID.IsNull then
  begin
    dm.cdsClient.Edit;
    dm.cdsClientID.Value := 1;
    dm.cdsClientDATACAD.Value := Date;
  end
  else
  begin
    dm.cdsClient.Open;
    dm.cdsClient.Last;
    proximo := dm.cdsClientID.AsInteger + 1;
    dm.cdsClient.Append;
    dm.cdsClientID.AsInteger := proximo;
    dm.cdsClientDATACAD.Value := Date;
    edName.SetFocus;
  end;
end;

procedure TfrmCadClient.btnSaveClick(Sender: TObject);
begin
  dm.cdsClient.Post;
  dm.cdsClient.ApplyUpdates(0);
  dm.cdsListClient.Refresh;
end;

end.
