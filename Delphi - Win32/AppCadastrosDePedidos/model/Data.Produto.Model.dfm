object dmProdutoModel: TdmProdutoModel
  Height = 147
  Width = 265
  object FDQProdutos: TFDQuery
    BeforeOpen = FDQProdutosBeforeOpen
    AfterClose = FDQProdutosAfterClose
    CachedUpdates = True
    SQL.Strings = (
      '  Select '
      '    * '
      '  from'
      '    Produtos'
      '  where '
      '    1=1')
    Left = 112
    Top = 32
  end
end
