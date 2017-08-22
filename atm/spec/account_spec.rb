require './lib/account.rb'
require 'date'

describe Account do
  it 'checks that the pin is 4 numbers' do
    pin_code = subject.pin_code
    pin_code_length = Math.log10(pin_code).to_i + 1
    expect(pin_code_length).to eq 4
  end

  it 'is expected to to have an expiry date on initialize' do
    expected_date = Date.today.next_year(5).strftime("%m/%y")
    expect(subject.exp_date).to eq expected_date
  end

end
