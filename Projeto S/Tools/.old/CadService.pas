unit CadService;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.Win.ADODB, Data.DB;

type
  TCadServ = class(TForm)
    LblNome: TLabel;
    Button1: TButton;
    CheckBox1: TCheckBox;
    EditNome: TEdit;
    Label2: TLabel;
    LblDesc: TLabel;
    EditDesc: TEdit;
    EditValor: TEdit;
    LblValor: TLabel;
    ADOQuery: TADOQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadServ: TCadServ;

implementation

{$R *.dfm}

procedure TCadServ.Button1Click(Sender: TObject);
begin
  if (EditNome.text= '') and (EditDesc.text = '') and (EditValor.text = '') then
    raise Exception.Create('Por favor, informe os dados!')
  else
  begin
    ADOQuery.Close;
    ADOQuery.SQL.clear;
    ADOQuery.SQL.Text := 'INSERT INTO Contratantes (Nome, Descricao) VALUES (:NOME, :Desc)';
    ADOQuery.Parameters.ParamByName('NOME').Value := EditNome.Text;
    ADOQuery.Parameters.ParamByName('Desc').Value := EditDesc.Text;
    ADOQuery.ExecSQL;
    ADOQuery.Open;
    {
    ADOQuery.Close;
    ADOQuery.SQL.clear;
    ADOQuery.SQL.Text := 'INSERT INTO VALORES (Preco) VALUES (:Preco)';
    ADOQuery.Parameters.ParamByName('NOME').Value := EditValor.Text; ----Tem que colocar pra sair de string pra numeric
    ADOQuery.ExecSQL;
    ADOQuery.Open;}
  end;



end;

end.
