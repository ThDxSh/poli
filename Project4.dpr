program Project4;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Form6},
  pessoa in 'pessoa.pas',
  cliente in 'cliente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
