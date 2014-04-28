require 'test_helper'

describe MarvelApi::Configuration do
  before do
    MarvelApi.reset!
  end

  it "should have nil default keys" do
    assert_nil MarvelApi.api_key
  end

  it "allows setting the api key" do
    MarvelApi.config do |config|
      config.api_key = "new key"
    end

    assert_equal "new key", MarvelApi.api_key
  end
end
