unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uFrmArquivo,
  ufrmResultado, UdadosPessoa;

type
  TFrmPrincipal = class(TForm)
    btnResultado: TButton;
    btnVerRequisitos: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    edtAltura: TEdit;
    edtPeso: TEdit;
    ComboBox1: TComboBox;
    procedure btnVerRequisitosClick(Sender: TObject);
    procedure btnResultadoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.btnResultadoClick(Sender: TObject);

begin
  try
    P_Dados_Pessoa.Altura := (StrToFloat(edtAltura.Text));
    P_Dados_Pessoa.Peso := (StrToFloat(edtPeso.Text));
    P_Dados_Pessoa.Sexo := ComboBox1.Text;
    P_Dados_Pessoa.IMC := CalcularIMC(P_Dados_Pessoa.Peso,
                                      P_Dados_Pessoa.Altura,
                                      P_Dados_Pessoa.Sexo);

    frmResultado.Showmodal;
  except
    ShowMessage('Dados inválidos!');
  end;

  end;

  procedure TFrmPrincipal.btnVerRequisitosClick(Sender: TObject);
  begin
    frmRequisitos.Showmodal;
  end;

end.
