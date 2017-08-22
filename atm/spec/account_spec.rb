require './lib/account.rb'
require 'date'

describe Account do
  it 'checks that the pin is 4 numbers' do
    number = rand(1000..9999)
    number_length = Math.log10(number).to_i + 1
    expect(number_length).to eq 4
  end
  
end
