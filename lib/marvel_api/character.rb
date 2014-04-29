require 'marvel_api/api_model'

module MarvelApi
  class Character < ApiModel

    attribute :id
    attribute :name
    attribute :description
    attribute :modified
    attribute :thumbnail
    attribute :resourceURI
    attribute :comics
    attribute :series
    attribute :stories
    attribute :events
    attribute :urls

    def endpoint
      "characters"
    end

  end
end
