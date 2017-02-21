object dmoLog: TdmoLog
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 172
  Width = 249
  object cdsLog1: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT FIRST 30 LOG_TIPO, LOG_USUARIO, LOG_MAQUINA, LOG_DATAREMO' +
      'TO, LOG_DATASERVIDOR FROM '
    Params = <>
    ProviderName = 'provLog1'
    AfterScroll = cdsLog1AfterScroll
    Left = 120
    Top = 24
    object cdsLog1LOG_TIPO: TStringField
      FieldName = 'LOG_TIPO'
      Required = True
      FixedChar = True
    end
    object cdsLog1LOG_USUARIO: TStringField
      FieldName = 'LOG_USUARIO'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsLog1LOG_MAQUINA: TStringField
      FieldName = 'LOG_MAQUINA'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsLog1LOG_DATAREMOTO: TSQLTimeStampField
      FieldName = 'LOG_DATAREMOTO'
      Required = True
    end
    object cdsLog1LOG_DATASERVIDOR: TSQLTimeStampField
      FieldName = 'LOG_DATASERVIDOR'
    end
  end
  object dsrLog1: TDataSource
    AutoEdit = False
    DataSet = cdsLog1
    Left = 120
    Top = 80
  end
  object cdsLog2: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT LOG_CAMPO, LOG_VALORANTIGO, LOG_VALORNOVO FROM '
    Params = <>
    ProviderName = 'provLog2'
    Left = 184
    Top = 24
    object cdsLog2LOG_CAMPO: TStringField
      FieldName = 'LOG_CAMPO'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsLog2LOG_VALORANTIGO: TStringField
      FieldName = 'LOG_VALORANTIGO'
      Size = 254
    end
    object cdsLog2LOG_VALORNOVO: TStringField
      FieldName = 'LOG_VALORNOVO'
      Size = 254
    end
  end
  object dsrLog2: TDataSource
    AutoEdit = False
    DataSet = cdsLog2
    Left = 184
    Top = 80
  end
end
