require 'marvel_api/api_model'

module MarvelApi
  class Character < ApiModel

    def endpoint
      "characters"
    end

  end
end
