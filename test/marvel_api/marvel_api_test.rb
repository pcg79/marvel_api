require 'test_helper'

describe MarvelApi do

  it "must have a version" do
    refute_nil MarvelApi::VERSION
  end

end
