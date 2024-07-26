unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFrm_Principal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Orcamentos1: TMenuItem;
    Relatrios1: TMenuItem;
    sobre1: TMenuItem;
    Sair1: TMenuItem;
    Contratantes1: TMenuItem;
    Servios1: TMenuItem;
    Grupos1: TMenuItem;
    Cadastro1: TMenuItem;
    RelOrcamentos: TMenuItem;
    procedure Orcamentos1Click(Sender: TObject);
    procedure Cadastro1Click(Sender: TObject);
    procedure Contratantes1Click(Sender: TObject);
    procedure Grupos1Click(Sender: TObject);
    procedure RelOrcamentosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;

implementation
  uses  UOrcamento, UCadClient, UCadService, UCadValues, UCadGroup,
  UCallRelOrcamento, UFrmRelOrcamento;

{$R *.dfm}

procedure TFrm_Principal.Cadastro1Click(Sender: TObject);
begin
  if not assigned(Frm_CadService) then
     Frm_CadService := Tfrm_CadService.create(self);
     Frm_CadService.show;
end;

procedure TFrm_Principal.Contratantes1Click(Sender: TObject);
begin
  if not assigned(Frm_CadClient) then
    Frm_CadClient := Tfrm_CadClient.create(self);
    Frm_CadClient.show;
end;

procedure TFrm_Principal.Grupos1Click(Sender: TObject);
begin
  if not assigned(Frm_CadGroup) then
    Frm_CadGroup := TFrm_CadGroup.create(self);
    Frm_CadGroup.show;
end;

procedure TFrm_Principal.Orcamentos1Click(Sender: TObject);
begin
  if not assigned(Frm_Orcamento) then
    Frm_Orcamento := TFrm_Orcamento.create(self);
    Frm_Orcamento.show;
end;

procedure TFrm_Principal.RelOrcamentosClick(Sender: TObject);
begin
  if not assigned(FrmCallRelOrcamento) then
    FrmCallRelOrcamento := TFrmCallRelOrcamento.create(self);
    FrmCallRelOrcamento.show;
end;

end.
