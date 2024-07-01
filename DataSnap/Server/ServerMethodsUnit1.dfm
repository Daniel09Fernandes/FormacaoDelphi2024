object ServerMethods1: TServerMethods1
  OnCreate = DSServerModuleCreate
  OnDestroy = DSServerModuleDestroy
  Height = 1080
  Width = 1440
  PixelsPerInch = 144
  object memPessoa: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 504
    Top = 264
    object memPessoaId: TIntegerField
      FieldName = 'Id'
    end
    object memPessoaNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object memPessoaIdade: TIntegerField
      FieldName = 'Idade'
    end
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 776
    Top = 400
  end
end
