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
    Label3: TLabel;
    edRegistrationDate: TDBEdit;
    lbAge: TLabel;
    edAge: TDBEdit;
    lbSex: TLabel;
    edSex: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Panel1: TPanel;
    Image1: TImage;
    btnNewClient: TBitBtn;
    BitBtn1: TBitBtn;
    btnChangeRegis: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
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

end.
