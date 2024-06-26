unit UCadValues;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UCadPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFrm_CadValues = class(TFrm_Padrao)
    FDQry_Cadastroid_servico: TIntegerField;
    FDQry_Cadastropreco: TFloatField;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    DBLookupComboBox: TDBLookupComboBox;
    procedure FDQry_CadastroBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadValues: TFrm_CadValues;

implementation

{$R *.dfm}

procedure TFrm_CadValues.FDQry_CadastroBeforePost(DataSet: TDataSet);
var
  CurrentDateTime: TDateTime;
  IdServico: Integer;
begin
  inherited;
  begin
    CurrentDateTime := Now;
    FDQry_Cadastro.SQL.Text := 'INSERT INTO valores (id_servico, preco, data) VALUES  (:id_servico, :preco, :data)';

    // Atribuir valores aos par�metros
    FDQry_Cadastro.ParamByName('id_servico').Value := StrToInt(DBLookupComboBox.Text);
    FDQry_Cadastro.ParamByName('preco').AsFloat := StrToFloat(Edit2.Text);
    FDQry_Cadastro.ParamByName('data').AsDateTime := CurrentDateTime;

    // Executar a consulta SQL
    FDQry_Cadastro.ExecSQL;
  end


  {CurrentDateTime := Now;

  // Definir o SQL para a inser��o de valores na tabela 'valores'
  FDQry_Cadastro.SQL.Text := 'INSERT INTO valores (id_servico, preco, data) VALUES (:id_servico, :preco, :data)';

  // Atribuir valores aos par�metros
  FDQry_Cadastro.ParamByName('id_servico').AsInteger := StrToInt(DBEdit1.Text); // Converta o texto para inteiro
  FDQry_Cadastro.ParamByName('preco').AsFloat := StrToFloat(DBEdit2.Text); // Converta o texto para ponto flutuante
  FDQry_Cadastro.ParamByName('data').AsDateTime := CurrentDateTime;

  // Executar a consulta SQL
  FDQry_Cadastro.ExecSQL;


  TimestampStr: string;
begin
   inherited;
    CurrentDateTime := Now;
    TimestampStr := FormatDateTime('YYYY-MM-DD HH:NN:SS', CurrentDateTime);
    FDQry_Cadastro.SQL.Text := 'INSERT INTO valores id_servico, preco,data VALUES :id_servico, :preco, (to_timestamp(:data, ''YYYY-MM-DD HH24:MI:SS''))';
    FDQry_Cadastro.ParamByName('data').AsString := TimestampStr;
    FDQry_Cadastro.ParamByName('id_servico') := DBEdit1.Text;
    FDQry_Cadastro.ParamByName('preco') := DBEdit2.Text;
    FDQry_Cadastro.ExecSQL; }

end;

procedure TFrm_CadValues.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  action := cafree;
  Frm_CadValues:= nil;

end;

end.
