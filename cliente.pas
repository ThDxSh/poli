unit cliente;

interface

uses
  System.SysUtils,
  pessoa;

type
TCliente = class(TPessoa)
  private
    FValorCredito: currency;
  public
  property ValorCredito: currency read FValorCredito; //write FValorCredito;
  function Receber(Value: Integer):string;  overload;
  function Receber(Value: Currency):string; overload;
end;

implementation

{ TCliente }

function TCliente.Receber(Value: Integer): string;
begin
Result := Value.ToString();
end;

function TCliente.Receber(Value: Currency): string;
begin
FValorCredito:= Value + (Value * 0.10);
Result := CurrToStr(Value);
end;

end.
