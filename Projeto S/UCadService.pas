unit UCadService;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UCadPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls, System.ImageList,
  Vcl.ImgList, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids;

type
  TFrm_CadService = class(TFrm_Padrao)
    FDQry_Cadastroid: TIntegerField;
    FDQry_Cadastronome: TWideStringField;
    FDQry_Cadastrodescricao: TWideStringField;
    Label2: TLabel;
    Label3: TLabel;
    FDQry_Valores: TFDQuery;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    DS_Valores: TDataSource;
    ActionList2: TActionList;
    DataSetFirst2: TDataSetFirst;
    DataSetPrior2: TDataSetPrior;
    DataSetNext2: TDataSetNext;
    DataSetLast2: TDataSetLast;
    DataSetInsert2: TDataSetInsert;
    DataSetDelete2: TDataSetDelete;
    DataSetEdit2: TDataSetEdit;
    DataSetPost2: TDataSetPost;
    DataSetCancel2: TDataSetCancel;
    DataSetRefresh2: TDataSetRefresh;
    ToolBar2: TToolBar;
    Inserir2: TToolButton;
    Editar2: TToolButton;
    Cancelar2: TToolButton;
    Enviar2: TToolButton;
    Deletar2: TToolButton;
    Inv: TToolButton;
    Pr�ximo: TToolButton;
    FDQry_Valoresid: TIntegerField;
    FDQry_Valoresid_servico: TIntegerField;
    FDQry_Valorespreco: TFloatField;
    FDQry_Valoresdata: TSQLTimeStampField;
    DataSource1: TDataSource;
    FDQry_Valoresab: TFDQuery;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FDQry_ValoresAfterInsert(DataSet: TDataSet);
    procedure FDQry_ValoresBeforePost(DataSet: TDataSet);
    procedure FDQry_CadastroAfterPost(DataSet: TDataSet);
    procedure DS_CadDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadService: TFrm_CadService;

implementation

{$R *.dfm}

uses UDM;


procedure TFrm_CadService.DS_CadDataChange(Sender: TObject; Field: TField);
  var
  id_servico : integer;
begin
  inherited;
  id_servico := 0;
  if FDQry_Cadastroid.AsString <> '' then
    id_servico := FDQry_Cadastroid.asInteger;

  FDQry_Valores.Close;
  FDQry_Valores.ParamByName('id_servico').asInteger := id_servico;
  FDQry_Valores.open;
end;

procedure TFrm_CadService.FDQry_CadastroAfterPost(DataSet: TDataSet);
begin
  inherited;
  FDQry_Cadastro.Refresh;
end;

procedure TFrm_CadService.FDQry_ValoresAfterInsert(DataSet: TDataSet);
begin
  inherited;
  FDQry_Valoresid_servico.AsInteger := FDQry_Cadastroid.AsInteger;
  FDQry_Valoresdata.AsDatetime := now;

end;

procedure TFrm_CadService.FDQry_ValoresBeforePost(DataSet: TDataSet);
begin
  inherited;
  if FDQry_Valorespreco.AsFloat <= 0  then
     raise Exception.Create('Necess�rio informar o Pre�o');

end;

procedure TFrm_CadService.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  action := cafree;
  Frm_CadService:= nil;
end;

end.
