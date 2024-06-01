object DmClienteModel: TDmClienteModel
  OnDestroy = DataModuleDestroy
  Height = 150
  Width = 278
  object FDQCadastroUsuario: TFDQuery
    BeforeOpen = FDQCadastroUsuarioBeforeOpen
    AfterClose = FDQCadastroUsuarioAfterClose
    CachedUpdates = True
    SQL.Strings = (
      'Select * From Cliente'
      'where 1=1')
    Left = 120
    Top = 40
  end
end
