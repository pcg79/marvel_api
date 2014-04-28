require 'test_helper'

describe MarvelApi::ApiModel do

  it "should raise an exception if #endpoint is called directly on it" do
    assert_raises MarvelApi::NotImplementedError do
      MarvelApi::ApiModel.new.endpoint
    end
  end

  it "should calculate the md5 hash correctly" do
    MarvelApi.config do |config|
      config.api_key = "key"
      config.private_key = "private"
    end

    ts = Time.now.to_i

    api = MarvelApi::ApiModel.new

    digest = Digest::MD5.hexdigest "#{ts}privatekey"
    assert_equal digest, api.hexdigest(ts)
  end

end
