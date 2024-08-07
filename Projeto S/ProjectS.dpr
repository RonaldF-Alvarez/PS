program ProjectS;

uses
  Vcl.Forms,
  UOrcamento in 'UOrcamento.pas' {Frm_Orcamento},
  UPrincipal in 'UPrincipal.pas' {Frm_Principal},
  UDM in 'UDM.pas' {DM: TDataModule},
  UCadClient in 'UCadClient.pas' {Frm_CadClient},
  UCadService in 'UCadService.pas' {Frm_CadService},
  UCadGroup in 'UCadGroup.pas' {Frm_CadGroup},
  UCadPadrao in 'Tools\UCadPadrao.pas' {Frm_Padrao},
  UFrmRelOrcamento in 'Rel\UFrmRelOrcamento.pas' {FrmRelOrc},
  UCallRelOrcamento in 'Tools\UCallRelOrcamento.pas' {FrmCallRelOrcamento};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.Run;
end.
