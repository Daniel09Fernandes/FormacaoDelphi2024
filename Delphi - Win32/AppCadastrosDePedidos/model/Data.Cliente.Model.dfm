object DmClienteModel: TDmClienteModel
  Height = 150
  Width = 278
  object FDQCadastroUsuario: TFDQuery
    BeforeOpen = FDQCadastroUsuarioBeforeOpen
    AfterClose = FDQCadastroUsuarioAfterClose
    SQL.Strings = (
      'Select * From Cliente')
    Left = 120
    Top = 40
  end
end
