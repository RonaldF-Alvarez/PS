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
  FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.DBCtrls, Vcl.Mask, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.DBActns, System.Actions, Vcl.ActnList, System.ImageList,
  Vcl.ImgList;

type
  TFrm_Orcamento = class(TForm)
    DBGrid: TDBGrid;
    Label1: TLabel;
    PanelTop: TPanel;
    PanelCenter: TPanel;
    FDQry_Orcamento: TFDQuery;
    Id_Orc: TDBEdit;
    Data_Orc: TDBEdit;
    Status: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Panel4: TPanel;
    FDQry_OrcamentoItem: TFDQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    DBEDIT_ID: TDBEdit;
    Label7: TLabel;
    CPF: TDBEdit;
    Telefone: TDBEdit;
    DS_OrcamentoItem: TDataSource;
    FDQry_OrcamentoItemcod_orcamento: TIntegerField;
    FDQry_OrcamentoItemid_servico: TIntegerField;
    FDQry_OrcamentoItemquantidade: TIntegerField;
    FDQry_Orcamentocod: TIntegerField;
    FDQry_Orcamentocod_cliente: TIntegerField;
    FDQry_Orcamentodata_orcamento: TSQLTimeStampField;
    FDQry_Orcamentostatus: TIntegerField;
    FDQry_Contratantes: TFDQuery;
    DS_Contratantes: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    ToolBar1: TToolBar;
    Inserir: TToolButton;
    Editar: TToolButton;
    Cancelar: TToolButton;
    Enviar: TToolButton;
    Deletar: TToolButton;
    ToolButton5: TToolButton;
    Primeiro: TToolButton;
    Anterior: TToolButton;
    Proximo: TToolButton;
    Ultimo: TToolButton;
    ImageList1: TImageList;
    ActionList1: TActionList;
    DatasetLast1: TDataSetLast;
    DatasetNext1: TDataSetNext;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    DatasetFirst1: TDataSetFirst;
    DatasetRefresh1: TDataSetRefresh;
    DatasetPrior1: TDataSetPrior;
    Panel7: TPanel;
    ToolBar2: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ActionList2: TActionList;
    DataSetLast2: TDataSetLast;
    DataSetNext2: TDataSetNext;
    DataSetInsert2: TDataSetInsert;
    DataSetDelete2: TDataSetDelete;
    DataSetEdit2: TDataSetEdit;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    DataSetFirst2: TDataSetFirst;
    DataSetRefresh2: TDataSetRefresh;
    DataSetPrior2: TDataSetPrior;
    DS_Orcamento: TDataSource;
    FDQry_Contratantescod: TIntegerField;
    FDQry_Contratantesnome: TWideStringField;
    FDQry_Contratantescpf_cnpj: TWideStringField;
    FDQry_Contratantestelefone: TWideStringField;
    FDQry_Servicos: TFDQuery;
    DS_Servicos: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    FDQry_Servicosid: TIntegerField;
    FDQry_Servicosnome: TWideStringField;
    Panel3: TPanel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    FDQry_Orcamentocontratantes_nome: TWideStringField;
    FDQry_Orcamentocontratantes_cpf: TWideStringField;
    FDQry_OrcamentoItemvalor_unid: TFloatField;
    FDQry_OrcamentoItemcalc_total_unidade: TFloatField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    FDQry_Orcamentocontratantes_telefone: TWideStringField;
    FDQry_OrcamentoItemservico_nome: TWideStringField;
    FDQry_OrcamentoItemLook_nome_servico: TStringField;
    FDQry_get_preco_serv: TFDQuery;
    FDQry_get_preco_servpreco: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FDQry_OrcamentoAfterScroll(DataSet: TDataSet);
    procedure FDQry_OrcamentoItemAfterInsert(DataSet: TDataSet);
    procedure FDQry_OrcamentoAfterInsert(DataSet: TDataSet);
    procedure FDQry_OrcamentoItemCalcFields(DataSet: TDataSet);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
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

procedure TFrm_Orcamento.DBLookupComboBox1CloseUp(Sender: TObject);
begin
  FDQry_Orcamentocod_cliente.AsInteger := FDQry_Contratantescod.AsInteger;
  FDQry_Orcamentocontratantes_nome.AsString := FDQry_Contratantesnome.AsString;
  FDQry_Orcamentocontratantes_cpf.AsString :=  FDQry_Contratantescpf_cnpj.AsString;
  FDQry_Orcamentocontratantes_telefone.AsString := FDQry_Contratantestelefone.AsString;
end;

procedure TFrm_Orcamento.FDQry_OrcamentoAfterInsert(DataSet: TDataSet);
var
  resultado: Integer;
begin
  FDQry_Orcamentodata_orcamento.AsDatetime := now;
  resultado := DM.RetornaContador('orcamentos', 'cod');
  FDQry_Orcamentocod.AsInteger:= resultado;
  Id_Orc.Text := IntToStr(resultado);
  FDQry_Orcamentostatus.Text := '1';
end;

procedure TFrm_Orcamento.FDQry_OrcamentoAfterScroll(DataSet: TDataSet);
begin
  FDQry_OrcamentoItem.close;
  FDQry_OrcamentoItem.parambyname('cod_orcamento').AsInteger := FDQry_Orcamentocod.AsInteger;
  FDQry_OrcamentoItem.open;
end;

procedure TFrm_Orcamento.FDQry_OrcamentoItemAfterInsert(DataSet: TDataSet);
begin
  if FDQry_Orcamentocod.AsString <> '' then
     FDQry_OrcamentoItemcod_orcamento.AsInteger := FDQry_Orcamentocod.AsInteger;
     FDQry_OrcamentoItemquantidade.AsInteger := 1;
end;

procedure TFrm_Orcamento.FDQry_OrcamentoItemBeforePost(DataSet: TDataSet);
  function Retorno_preco(id_servico :integer; data:Tdatetime):real;
  begin
    result := 0;
    FDQry_get_preco_serv.Close;
    FDQry_get_preco_serv.ParamByName('id_servico').AsInteger := id_servico;
    FDQry_get_preco_serv.ParamByName('data_orcamento').asdatetime := data;
    FDQry_get_preco_serv.open;
    if not FDQry_get_preco_serv.isempty then
      result := FDQry_get_preco_servpreco.AsFloat;
  end;
begin
  if FDQry_OrcamentoItem.State in [dsEdit,dsInsert] then
    FDQry_OrcamentoItemvalor_unid.AsFloat := Retorno_preco(FDQry_OrcamentoItem.FieldByName('id_servico').asinteger, FDQry_Orcamentodata_orcamento.AsDatetime);
end;

procedure TFrm_Orcamento.FDQry_OrcamentoItemCalcFields(DataSet: TDataSet);
begin
  FDQry_OrcamentoItemcalc_total_unidade.asfloat :=
  FDQry_OrcamentoItemquantidade.AsFloat * FDQry_OrcamentoItemvalor_unid.AsFloat;
end;

procedure TFrm_Orcamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
  Frm_Orcamento:= nil;
end;

procedure TFrm_Orcamento.FormCreate(Sender: TObject);
begin
  FDQry_Orcamento.Open;
  FDQry_OrcamentoItem.Open;
  FDQry_Contratantes.Open;
  FDQry_Servicos.Open;
end;

end.
