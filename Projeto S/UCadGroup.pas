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
  Datasnap.DBClient, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TFrm_CadGroup = class(TForm)
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    DataSource2: TDataSource;
    FDQuery3: TFDQuery;
    ClientDataSet1: TClientDataSet;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    DBComboBox1: TDBLookupComboBox;
    EditNomegrupo: TEdit;
    Edit2: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    TempData: TClientDataSet;
    procedure AddToTempData(const Value1, Value2: string; ID: Integer);
    procedure SaveTempDataToDatabase;
    procedure GetIdMax;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadGroup: TFrm_CadGroup;

implementation

{$R *.dfm}

uses UDM;

procedure TFrm_CadGroup.FormCreate(Sender: TObject);
var
  maxID: Integer;
begin
  TempData := TClientDataSet.Create(Self);
  TempData.FieldDefs.Add('descricao', ftString, 255);
  TempData.FieldDefs.Add('id_servico', ftInteger);
  TempData.FieldDefs.Add('ID', ftInteger);
  TempData.CreateDataSet;

  DataSource2.DataSet := TempData;
  GetIdMax;
  FDQuery1.Open;
end;

procedure TFrm_CadGroup.GetIdMax;
var
  maxID: Integer;
begin
  FDQuery3.SQL.Clear;
  FDQuery3.SQL.Text := 'SELECT MAX(id_grupo_serv) AS MaxID FROM grupo_servicos';
  FDQuery3.Open;
  try
    if not FDQuery3.FieldByName('MaxID').IsNull then
      maxID := FDQuery3.FieldByName('MaxID').AsInteger
    else
      maxID := 0;
    Edit2.Text := IntToStr(maxID + 1);
  finally
    FDQuery3.Close;
  end;
end;

procedure TFrm_CadGroup.AddToTempData(const Value1, Value2: string; ID: Integer);
begin
  TempData.Append;
  TempData.FieldByName('descricao').AsString := Value1;
  TempData.FieldByName('id_servico').AsString := inttostr(ID);
  TempData.FieldByName('ID').AsInteger := strtoint(Value2);
  TempData.Post;
end;

procedure TFrm_CadGroup.SaveTempDataToDatabase;
begin
  if EditNomegrupo.text= '' then
    begin
    MessageDlg('Por favor, insira o nome do grupo!', mtWarning, [mbOK], 0);
    Exit;
    end
  else
  begin
    try
    TempData.First;
    while not TempData.Eof do
      begin
      FDQuery1.SQL.Text := 'INSERT INTO grupo_servicos (id_GRUPO_SERV, descricao, id_servico) VALUES (:id_GRUPO_SERV, :descricao, :id_servico)';
      FDQuery1.ParamByName('id_servico').AsInteger := TempData.FieldByName('id_servico').AsInteger;
      FDQuery1.ParamByName('descricao').AsString := TempData.FieldByName('descricao').AsString;
      FDQuery1.ParamByName('id_grupo_serv').AsInteger := TempData.FieldByName('ID').AsInteger;
      FDQuery1.ExecSQL;
      TempData.Next;
      end;
    TempData.EmptyDataSet;
    MessageDlg('Grupo Criado com sucesso!',mtInformation,[mbOk],0);
    except
      on E: Exception do
    begin
      MessageDlg('Erro ao enviar os dados: ' + E.Message, mtError, [mbOK], 0);
    end;
    end;
  end;
  end;

procedure TFrm_CadGroup.BitBtn1Click(Sender: TObject);
begin
  AddToTempData(EditNomegrupo.Text, Edit2.Text, DBComboBox1.KeyValue);
end;

procedure TFrm_CadGroup.BitBtn3Click(Sender: TObject);
begin
 TempData.ClearFields;
end;

procedure TFrm_CadGroup.BitBtn4Click(Sender: TObject);
begin
  SaveTempDataToDatabase;
end;

procedure TFrm_CadGroup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FDQuery1.Close;
  FDQuery2.Close;
  FDQuery3.Close;
  action := cafree;
  Frm_CadGroup:= nil;
end;

end.
