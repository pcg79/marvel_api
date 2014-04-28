require "marvel_api/version"
require 'marvel_api/configuration'

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
  end

end
