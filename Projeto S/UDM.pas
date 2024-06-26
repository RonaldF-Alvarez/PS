unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.PGDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.PG, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    FDQry_Contador: TFDQuery;
    FDConnection: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
    function RetornaContador(tabela,campo:string):Integer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TDM.RetornaContador(tabela,campo:string):Integer;
  var
    contador : string;
begin
  FDQry_Contador.close;
  FDQry_Contador.sql.Text := 'select max('+campo+') as contador from '+tabela;
  FDQry_Contador.open;
  if FDQry_Contador.recordcount > 0 then
     contador := FDQry_Contador.fieldbyname('contador').asstring
  else
     contador := '0';

  try
    result := strtoint(contador) +1;
  except
    result := 1;
  end;

end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  FDConnection.Connected := true;
end;

end.
