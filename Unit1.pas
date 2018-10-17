unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, JvExStdCtrls, JvCombobox, JvDBCombobox, Vcl.Mask, JvExMask,
  JvToolEdit, JvDBControls, Vcl.DBCtrls, JvDBDotNetControls, JvExControls,
  JvDBLookup, DBCtrlsEh, DBGridEh, DBLookupEh, sSkinManager, Vcl.Buttons,
  JvExButtons, JvButtons, JvComponentBase, JvCaptionButton, JvXPCore,
  JvXPButtons;

type
  TVisorEventos = class(TForm)
    DBGrid1: TDBGrid;
    comboEventos: TJvDBLookupCombo;
    sSkinManager1: TsSkinManager;
    btFiltrar: TJvXPButton;
    btLimpiar: TJvXPButton;
    lbEvento: TLabel;
    procedure btFiltrarClick(Sender: TObject);
    procedure btLimpiarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VisorEventos: TVisorEventos;

implementation

{$R *.dfm}

uses Unit2;

procedure TVisorEventos.btFiltrarClick(Sender: TObject);
begin
  with ModuloDatos.QEventos do
  begin
    if Active then
      Close;
    SQL.Add('where evento = :evento');
    Prepare;
    ParamByName('evento').Value := comboEventos.Text;
    Open;

  end;
end;

procedure TVisorEventos.btLimpiarClick(Sender: TObject);
begin
    with ModuloDatos.QEventos do
    begin
      Close;
      SQL.Delete(9);
      Prepare;
      Open;
    end;
end;

end.
