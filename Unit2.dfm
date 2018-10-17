object ModuloDatos: TModuloDatos
  OldCreateOrder = False
  Height = 633
  Width = 474
  object BaseDatos: TFDConnection
    Params.Strings = (
      'Database=C:\Distrito\Sieper\SIEPER.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Transaction = Principal
    UpdateTransaction = Update
    Left = 64
    Top = 24
  end
  object Principal: TFDTransaction
    Connection = BaseDatos
    Left = 32
    Top = 80
  end
  object Update: TFDTransaction
    Connection = BaseDatos
    Left = 80
    Top = 80
  end
  object DSEventos: TDataSource
    DataSet = QEventos
    Left = 192
    Top = 24
  end
  object QEventos: TFDQuery
    Active = True
    Connection = BaseDatos
    SQL.Strings = (
      'select'
      '  CODOPERACION,'
      '  OBJETO,'
      '  SERIENUMERO,'
      '  FECHA,'
      '  HORA,'
      '  USUARIO,'
      '  EVENTO'
      'From EVENT_LOG')
    Left = 192
    Top = 80
    object QEventosCODOPERACION: TIntegerField
      FieldName = 'CODOPERACION'
      Origin = 'CODOPERACION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QEventosOBJETO: TIntegerField
      FieldName = 'OBJETO'
      Origin = 'OBJETO'
    end
    object QEventosSERIENUMERO: TStringField
      FieldName = 'SERIENUMERO'
      Origin = 'SERIENUMERO'
      Size = 15
    end
    object QEventosFECHA: TDateField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QEventosHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object QEventosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 15
    end
    object QEventosEVENTO: TStringField
      FieldName = 'EVENTO'
      Origin = 'EVENTO'
      Size = 120
    end
  end
  object QTipoEvento: TFDQuery
    Active = True
    Connection = BaseDatos
    SQL.Strings = (
      'select'
      '  distinct(EVENTO)'
      'From EVENT_LOG')
    Left = 288
    Top = 80
    object QTipoEventoEVENTO: TStringField
      FieldName = 'EVENTO'
      Origin = 'EVENTO'
      Size = 120
    end
  end
  object DSTipoEvento: TDataSource
    DataSet = QTipoEvento
    Left = 288
    Top = 24
  end
end
