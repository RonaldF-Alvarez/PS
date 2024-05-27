unit UCadGroup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Vcl.StdCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.DBActns, System.Actions,
  Vcl.ActnList, Vcl.ToolWin, System.ImageList, Vcl.ImgList, Vcl.Mask;

type
  TFrm_CadGroup = class(TForm)
    FDQry_Grid: TFDQuery;
    Panel3: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
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
    DBEditGpNome: TDBEdit;
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
    DBEditGp: TDBEdit;
    DS_Grupo: TDataSource;
    FDQry_Grupo: TFDQuery;
    DS_Grid: TDataSource;
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
    ActionAdicionar: TAction;
    FDQry_Serv: TFDQuery;
    DS_Serv: TDataSource;
    FDQry_look_serv: TFDQuery;
    Label1: TLabel;
    Panel1: TPanel;
    Panel4: TPanel;
    FDQry_Gridid_grupo_servico: TIntegerField;
    FDQry_Gridid_servico: TIntegerField;
    FDQry_Gridnome_servico: TWideStringField;
    FDQry_Grupoid: TIntegerField;
    FDQry_Grupoid_grupo_serv: TIntegerField;
    FDQry_Grupodescricao: TWideStringField;
    FDQry_look_servid: TIntegerField;
    FDQry_look_servnome: TWideStringField;
    FDQry_GridLook_serv: TStringField;
    Label5: TLabel;
    Label2: TLabel;
    ImageList1: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure DS_GrupoDataChange(Sender: TObject; Field: TField);
    procedure FDQry_GrupoAfterInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FDQry_GrupoAfterPost(DataSet: TDataSet);
    procedure FDQry_GridAfterInsert(DataSet: TDataSet);
    procedure FDQry_look_servBeforeOpen(DataSet: TDataSet);
    procedure FDQry_GridAfterPost(DataSet: TDataSet);
    procedure DS_GridDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadGroup: TFrm_CadGroup;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_CadGroup.FDQry_GridAfterInsert(DataSet: TDataSet);
var
idgrupo : integer;
begin
  idgrupo := 0;
  idgrupo := FDQry_Grupoid.Value;
  FDQry_Gridid_grupo_servico.AsInteger := idgrupo;
end;

procedure TFrm_CadGroup.FDQry_GridAfterPost(DataSet: TDataSet);
begin
 FDQry_Grid.Refresh;
end;

procedure TFrm_CadGroup.FDQry_GrupoAfterInsert(DataSet: TDataSet);
var
  resultado: Integer;
begin
  resultado := DM.RetornaContador('grupo_servicos', 'id_grupo_serv');
  DBEditGp.Text := IntToStr(resultado);
end;

procedure TFrm_CadGroup.FDQry_GrupoAfterPost(DataSet: TDataSet);
begin
  FDQry_Grupo.Refresh;
end;

procedure TFrm_CadGroup.FDQry_look_servBeforeOpen(DataSet: TDataSet);
  Var codigo_Grupo : Integer;
begin
  codigo_Grupo := 0;
  if FDQry_Grupoid_grupo_serv.AsInteger > 0 then
    codigo_Grupo  := FDQry_Grupoid_grupo_serv.AsInteger;
  FDQry_look_serv.ParamByName('id_grupo_servico').AsInteger := codigo_Grupo;
end;

procedure TFrm_CadGroup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
  Frm_CadGroup:= nil;
end;

procedure TFrm_CadGroup.FormCreate(Sender: TObject);
var
  maxID: Integer;
begin
FDQry_Serv.Open;
FDQry_Grupo.Open;
FDQry_Grid.Open;
//FDQry_GridIns.Open;
end;

procedure TFrm_CadGroup.DS_GridDataChange(Sender: TObject; Field: TField);
begin
  FDQry_look_serv.Refresh;
end;

procedure TFrm_CadGroup.DS_GrupoDataChange(Sender: TObject; Field: TField);
var
  id_grupo_servico : string;
begin
  inherited;
  id_grupo_servico := '';
  if FDQry_Grupo.FieldByName('id_grupo_serv').AsString <> '' then
    id_grupo_servico := FDQry_Grupo.FieldByName('id_grupo_serv').AsString;
  begin
    FDQry_Grid.Close;
    FDQry_Grid.ParamByName('id_grupo_servico').AsInteger := StrToInt(id_grupo_servico);
    FDQry_Grid.Open;
  end;
end;

end.
{
procedure TFrm_CadGroup.ActionAdicionarExecute(Sender: TObject);
var
  id_servico: string;
  id_grupo_servico: string;
begin
//aqui vai ter a passagem pra tabela grupo_serv_servicos
  if (DBComboBox.Text <> '') and (DBEditGpNome.Text <> '') then
  begin
    id_servico := DBEditIDSERV.Text;
    id_grupo_servico := DBEditGp.Text;
    FDQry_GridIns.SQL.Text := 'INSERT INTO grupo_serv_servicos (id_servico, id_grupo_servico) VALUES (:id_servico, :id_grupo_servico)';
    FDQry_GridIns.ParamByName('id_servico').AsInteger := StrToInt(id_servico);
    FDQry_GridIns.ParamByName('id_grupo_servico').AsInteger := StrToInt(id_grupo_servico);
    FDQry_GridIns.ExecSQL;
    FDQry_Grid.Open;
    FDQry_Grid.Refresh;
  end
  else
  begin
    ShowMessage('Por favor, preencha todos os campos.');
  end;
end;

}
