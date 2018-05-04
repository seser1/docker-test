require 'spec_helper'
require 'test'

RSpec.describe Test do
  test_instance=nil
  data='data'

  it 'initializes correctly' do
    test_instance=Test.new(data)
  end

  it 'returns correct data' do
    expect(test_instance.get).to eq data
  end
  
end