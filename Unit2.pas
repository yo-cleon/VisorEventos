unit Unit2;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TModuloDatos = class(TDataModule)
    BaseDatos: TFDConnection;
    Principal: TFDTransaction;
    Update: TFDTransaction;
    DSEventos: TDataSource;
    QEventos: TFDQuery;
    QEventosCODOPERACION: TIntegerField;
    QEventosOBJETO: TIntegerField;
    QEventosSERIENUMERO: TStringField;
    QEventosFECHA: TDateField;
    QEventosHORA: TTimeField;
    QEventosUSUARIO: TStringField;
    QEventosEVENTO: TStringField;
    QTipoEvento: TFDQuery;
    DSTipoEvento: TDataSource;
    QTipoEventoEVENTO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModuloDatos: TModuloDatos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
