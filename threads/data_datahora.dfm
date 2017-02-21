object dmoDataHora: TdmoDataHora
  OldCreateOrder = False
  Height = 111
  Width = 206
  object cdsDataHora: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'provDateTime'
    Left = 120
    Top = 40
    object cdsDataHoraDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
      Required = True
    end
  end
end
