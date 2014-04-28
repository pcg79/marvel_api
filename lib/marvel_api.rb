require "marvel_api/version"
require 'marvel_api/configuration'
require 'marvel_api/character'

module MarvelApi

  class << self
    def configuration
      @configuration ||= Configuration.new
    end

    def reset!
      @configuration = Configuration.new
    end

    def config(&block)
      yield configuration
    end

    def api_key
      configuration.api_key
    end

    def private_key
      configuration.private_key
    end
  end

end
