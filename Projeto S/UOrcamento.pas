unit UOrcamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ButtonGroup, Vcl.Menus,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.DBCtrls, Vcl.Mask;

type
  TFrm_Orcamento = class(TForm)
    DBGrid: TDBGrid;
    Label1: TLabel;
    PanelTop: TPanel;
    PanelCenter: TPanel;
    FDQry_Orcamento: TFDQuery;
    DS_Orcamento: TDataSource;
    Button2: TButton;
    Id_Orc: TDBEdit;
    Data_Orc: TDBEdit;
    Label4: TLabel;
    Status: TDBEdit;
    Label5: TLabel;
    DBComboBox1: TDBComboBox;
    Label6: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    FDQry_OrcamentoItem: TFDQuery;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    ID: TDBEdit;
    Nome: TDBEdit;
    Label7: TLabel;
    CPF: TDBEdit;
    Telefone: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DS_OrcamentoItem: TDataSource;
    FDQry_OrcamentoItemcod_orcamento: TIntegerField;
    FDQry_OrcamentoItemid_servico: TIntegerField;
    FDQry_OrcamentoItemquantidade: TIntegerField;
    FDQry_OrcamentoItemvalor_unid: TFloatField;
    FDQry_Orcamentocod: TIntegerField;
    FDQry_Orcamentocod_cliente: TIntegerField;
    FDQry_Orcamentodata_orcamento: TSQLTimeStampField;
    FDQry_Orcamentostatus: TIntegerField;
    FDQry_Orcamentonome: TWideStringField;
    FDQry_Orcamentocpf_cnpj: TWideStringField;
    FDQry_Orcamentotelefone: TWideStringField;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    FDQry_valores: TFDQuery;
    FDQry_valoresid_servico: TIntegerField;
    FDQry_valorespreco: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FDQry_OrcamentoAfterScroll(DataSet: TDataSet);
    procedure FDQry_OrcamentoItemAfterInsert(DataSet: TDataSet);
    procedure FDQry_OrcamentoItemBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Orcamento: TFrm_Orcamento;

implementation


  uses UDM;

{$R *.dfm}

procedure TFrm_Orcamento.FDQry_OrcamentoAfterScroll(DataSet: TDataSet);
begin
  FDQry_OrcamentoItem.close;
  FDQry_OrcamentoItem.parambyname('cod_orcamento').AsInteger := FDQry_Orcamentocod.AsInteger;
  FDQry_OrcamentoItem.open;
end;

procedure TFrm_Orcamento.FDQry_OrcamentoItemAfterInsert(DataSet: TDataSet);
begin
  FDQry_OrcamentoItemcod_orcamento.AsInteger := FDQry_Orcamentocod.AsInteger;
  FDQry_OrcamentoItemid_servico.AsInteger := 1;
  FDQry_OrcamentoItemquantidade.AsInteger := 1;

end;

procedure TFrm_Orcamento.FDQry_OrcamentoItemBeforePost(DataSet: TDataSet);
begin
  if FDQry_valores.Locate('id_servico',FDQry_OrcamentoItemid_servico.asinteger,[]) then
     FDQry_OrcamentoItemvalor_unid.AsFloat := FDQry_valorespreco.AsFloat
  else
     FDQry_OrcamentoItemvalor_unid.AsFloat := 0;

//  FDQry_OrcamentoItemvalor_total.asfloat := FDQry_OrcamentoItemvalor_unid.AsFloat * FDQry_OrcamentoItemquantidade.AsFloat;

end;

procedure TFrm_Orcamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
  Frm_Orcamento:= nil;
end;

procedure TFrm_Orcamento.FormCreate(Sender: TObject);
begin
  FDQry_Orcamento.Open;
  FDQry_valores.Open;
end;

end.
