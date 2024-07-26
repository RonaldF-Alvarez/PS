unit UCallRelOrcamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxSmartMemo, frCoreClasses, frxClass, frxDBSet;

type
  TFrmCallRelOrcamento = class(TForm)
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    at�: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    DateTimePicker2: TDateTimePicker;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    FDQry_RelOrcamentos: TFDQuery;
    DS_RelOrcamentos: TDataSource;
    RelReportOrc: TfrxReport;
    DSRelOrcDB: TfrxDBDataset;
    DSRelOrcItemDB: TfrxDBDataset;
    FDQry_RelOrcamentoItens: TFDQuery;
    DS_RelOrcamentoItens: TDataSource;
    FDQry_RelOrcamentoscod: TIntegerField;
    FDQry_RelOrcamentosdata_orcamento: TSQLTimeStampField;
    FDQry_RelOrcamentosstatus: TIntegerField;
    FDQry_RelOrcamentoItenscod_orcamento: TIntegerField;
    FDQry_RelOrcamentoItensid_servico: TIntegerField;
    FDQry_RelOrcamentoItensquantidade: TIntegerField;
    FDQry_RelOrcamentoItensvalor_unid: TFloatField;
    FDQry_RelOrcamentoItensservico_nome: TWideStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DSRelOrcDBNext(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCallRelOrcamento: TFrmCallRelOrcamento;

implementation

{$R *.dfm}

uses UDM;

procedure TFrmCallRelOrcamento.BitBtn1Click(Sender: TObject);
begin
  FDQry_RelOrcamentos.Close;
  FDQry_RelOrcamentos.ParamByName('data_inicio').AsDate := DateTimePicker1.DateTime;
  FDQry_RelOrcamentos.ParamByName('data_fim').AsDate := DateTimePicker2.DateTime;
  FDQry_RelOrcamentos.Open;
  FDQry_RelOrcamentoItens.Close;
  FDQry_RelOrcamentoItens.ParamByName('cod_orcamento').AsInteger := FDQry_RelOrcamentos.FieldByName('cod').AsInteger;
  FDQry_RelOrcamentoItens.Open;
  RelReportOrc.ShowReport();
  end;

procedure TFrmCallRelOrcamento.DSRelOrcDBNext(Sender: TObject);
begin
  FDQry_RelOrcamentoItens.Close;
  FDQry_RelOrcamentoItens.ParamByName('cod_orcamento').AsInteger := FDQry_RelOrcamentos.FieldByName('cod').AsInteger;
  FDQry_RelOrcamentoItens.Open;
end;

procedure TFrmCallRelOrcamento.FormCreate(Sender: TObject);
begin
  FDQry_RelOrcamentos.Open;
  DateTimePicker2.Date := now;
end;

end.
