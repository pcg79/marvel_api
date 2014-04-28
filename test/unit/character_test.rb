require 'test_helper'

describe MarvelApi::Character do

  before do
    @model = MarvelApi::Character.new
  end

  it "should call the correct url" do
    assert_equal @model.url, "http://gateway.marvel.com/v1/public/characters"
  end

end