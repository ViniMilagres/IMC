unit uDadosPessoa;

interface

  Type
    RDados_Pessoa = record
      Altura: Double;
      Peso: Double;
      Sexo: String;
      IMC: String
    end;

    function CalcularIMC(P_Peso, P_Altura: Double; P_Sexo :String):String;

var
  P_Dados_Pessoa : Rdados_Pessoa;

implementation

uses
  System.SysUtils;

function CalcularIMC(P_Peso, P_Altura: Double; P_Sexo :String):String;
var
  l_IMC: Double;
  l_StrIMC: String;
begin
  if P_Sexo = '' then
    raise Exception.Create('Obrigatório informar o sexo');

  try
    l_IMC := P_Peso/(P_Altura*P_Altura);
    if P_Sexo='FEMININO' then
    begin
      if (l_IMC < 19.1) then
        l_StrIMC := 'Abaixo do peso'
      else
        if (l_IMC >= 19.1) and (l_IMC <= 25.8) then
          l_StrIMC := 'No peso normal'
        else
          if (l_IMC >=25.8) and (l_IMC <= 27.3)then
            l_StrIMC := 'Marginalmente acima do peso'
          else
            if (l_IMC >= 27.3) and (l_IMC <= 32.3)  then
              l_StrIMC := 'Acima do peso'
            else
              if (l_IMC > 32.3) then
                l_StrIMC := 'Obeso';
    end

    else
    begin
    if P_Sexo='MASCULINO' then
    begin
        if (l_IMC < 20.7) then
          l_StrIMC := 'Abaixo do peso'
        else
          if (l_IMC >= 20.7) and (l_IMC <= 26.4) then
            l_StrIMC := 'No peso normal'
          else
            if (l_IMC >=26.4) and (l_IMC <= 27.8) then
              l_StrIMC := 'Marginalmente acima do peso'
            else
              if (l_IMC >= 27.8) and (l_IMC <= 31.1)  then
                l_StrIMC := 'Acima do peso'
              else
                if (l_IMC > 31.1) then
                  l_StrIMC := 'Obeso';
    end;
  end;
  Result := l_StrIMC;
except
  raise Exception.Create('Erro ao efetuar cálculo do IMC');
end;
end;

end.