class EntertainmentIndex < Chewy::Index
    settings analysis: {
        analyzer: {
            title: {
                tokenizer: 'standard',
                filter: ['lowercase', 'asciifolding']
            }
        }
    }
    index_scope Product.includes(:author) do
        field :title, analyzer: 'title'
        field :price, type: 'integer'
        field :body, analyzer: 'title'
    end

    # define_type Book.includes(:author, :tags) do
    #     field :title, analyzer: 'title'
    #     field :year, type: 'integer'
    #     field :author, value: ->{ author.name }
    #     field :author_id, type: 'integer'
    #     field :description
    #     field :tags, index: 'not_analyzed', value: ->{ tags.map(&:name) }
    # end

    # {movie: Video.movies, cartoon: Video.cartoons}.each do |type_name, scope|
    #     define_type scope.includes(:director, :tags), name: type_name do
    #     field :title, analyzer: 'title'
    #     field :year, type: 'integer'
    #     field :author, value: ->{ director.name }
    #     field :author_id, type: 'integer', value: ->{ director_id }
    #     field :description
    #     field :tags, index: 'not_analyzed', value: ->{ tags.map(&:name) }
    #     end
    # end
end