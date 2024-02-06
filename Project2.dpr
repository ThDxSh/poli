program Project2;

uses
  Vcl.Forms,
  Unit4 in '..\..\..\Documents\Embarcadero\Studio\Projects\Unit4.pas' {Form4},
  funcoesData in '..\..\..\Documents\Embarcadero\Studio\Projects\funcoesData.pas',
  Utils in '..\..\..\Documents\Embarcadero\Studio\Projects\Utils.pas',
  pessoa in '..\..\..\Documents\Embarcadero\Studio\Projects\pessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
