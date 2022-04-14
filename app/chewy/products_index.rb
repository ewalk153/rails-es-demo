class ProductsIndex < Chewy::Index
  settings analysis: {
    analyzer: {
      title: {
        tokenizer: 'standard',
        filter: ['lowercase', 'asciifolding']
      }
    }
  }

  index_scope Product do
    field :title, analyzer: 'title'
    field :price, type: 'integer'
    field :body, analyzer: 'title'
  end
end
