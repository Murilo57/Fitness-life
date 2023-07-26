unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, frxpngimage;

type
  TFrmLogin = class(TForm)
    pnlFundo: TPanel;
    Image1: TImage;
    pnlLogin: TPanel;
    lblLogin: TLabel;
    lblSenha: TLabel;
    edtLogin: TEdit;
    edtSenha: TEdit;
    btnLogin: TSpeedButton;
    btnSair: TSpeedButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure btnLoginClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

uses  DmConection, Menu;

{$R *.dfm}

procedure TFrmLogin.btnLoginClick(Sender: TObject);
begin
  dm.cdsLogin.Close;
  dm.cdsLogin.Open;
  if dm.cdsLogin.Locate('LOGIN',edtLogin.Text,[])and dm.cdsLogin.Locate('PASSWORD', edtSenha.Text,[]) then
  begin
    FrmMenu := TFrmMenu.create(nil);
    FrmMenu.ShowModal;
  end
  else
  begin
    Application.MessageBox('Usuario incorreto','Usuario incorreto', MB_ICONINFORMATION+MB_OK);
    Exit;
  end;
end;

procedure TFrmLogin.btnSairClick(Sender: TObject);
begin
  Application.Terminate;

end;

procedure TFrmLogin.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnLoginClick(Sender);
end;

procedure TFrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Close;
end;

end.
