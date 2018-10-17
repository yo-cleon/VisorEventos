program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {VisorEventos},
  Unit2 in 'Unit2.pas' {ModuloDatos: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TVisorEventos, VisorEventos);
  Application.CreateForm(TModuloDatos, ModuloDatos);
  Application.Run;
end.
