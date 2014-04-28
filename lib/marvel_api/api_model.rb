require 'httparty'

module MarvelApi
  class NotImplementedError < StandardError; end

  class ApiModel

    def self.all
      new.all
    end

    def host
      "gateway.marvel.com"
    end

    def path
      "#{version}/#{visibility}/#{endpoint}"
    end

    def url
      "http://#{host}/#{path}"
    end

    def version
      "v1"
    end

    def visibility
      "public"
    end

    def endpoint
      raise NotImplementedError
    end

    def options(params={})
      ts = Time.now.to_i
      {
        apikey: MarvelApi.api_key,
        ts: ts,
        hash: hexdigest(ts)
      }.merge(params)
    end

    def hexdigest(ts)
      Digest::MD5.hexdigest(digest_string(ts))
    end

    def digest_string(ts)
      "#{ts}#{MarvelApi.private_key}#{MarvelApi.api_key}"
    end

    def option_key_values
      [].tap do |params|
        options.each_pair do |k, v|
          params << "#{k}=#{v}"
        end
      end.join("&")
    end

    def full_path
      "#{url}?#{option_key_values}"
    end

    def all
      HTTParty.get(full_path)
    end
  end
end
