program App_Indice;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal},
  uFrmArquivo in 'uFrmArquivo.pas' {frmRequisitos},
  uFrmResultado in 'uFrmResultado.pas' {frmResultado},
  uDadosPessoa in 'uDadosPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TfrmRequisitos, frmRequisitos);
  Application.CreateForm(TfrmResultado, frmResultado);
  Application.Run;
end.
