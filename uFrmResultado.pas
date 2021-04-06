unit uFrmResultado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uDadosPessoa;

type
  TfrmResultado = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblAltura: TLabel;
    lblPeso: TLabel;
    lblSexo: TLabel;
    lblIMC: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmResultado: TfrmResultado;

implementation

{$R *.dfm}

uses uFrmArquivo, uFrmPrincipal;

procedure TfrmResultado.FormShow(Sender: TObject);
begin
  lblAltura.Caption := FloatToStr (P_Dados_Pessoa.Altura);
  lblPeso.Caption   := FloatToStr(P_Dados_Pessoa.Peso);
  lblSexo.Caption   := P_Dados_Pessoa.Sexo;
  lblIMC.Caption    := P_Dados_Pessoa.IMC;
end;

end.

