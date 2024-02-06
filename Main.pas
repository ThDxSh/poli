unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm6 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
   // function Receber(Value: Integer): String;  overload;
  end;

var
  Form6: TForm6;

implementation

uses
  pessoa, cliente;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
var
pessoa: TPessoa;
cliente: TCliente;
begin
  Memo1.Clear;
  pessoa:= TPessoa.Create;
  cliente:= TCliente.Create;
  try
     pessoa.Nome:= 'Alex';
     pessoa.DataNascimento:= '15/10/2000';
     pessoa.Email:= 'alex@email.com';


     Memo1.Lines.Add('Nome: ' + pessoa.Nome);
     Memo1.Lines.Add('Data de nascimento: ' + pessoa.DataNascimento);
     Memo1.Lines.Add('Email: ' + pessoa.Email);
     Memo1.Lines.Add('Idade: ' +pessoa.Idade.ToString);
     Memo1.Lines.Add('Receber Int: ' + cliente.Receber(120));
     Memo1.Lines.Add('Receber curr: ' + cliente.Receber(10.50));
     Memo1.Lines.Add('Valor de Credito: ' + CurrToStr(cliente.ValorCredito));
  finally
    pessoa.Free;
    cliente.Free;
  end;

end;

end.
