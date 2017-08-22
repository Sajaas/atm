require './lib/account.rb'
require 'date'

describe Account do
  it 'checks that the pin is 4 numbers' do
    pin_length = Math.log10(subject.pin_code).to_i + 1
    expect(pin_length).to eq 4
  end

  it 'is expected to to have an expiry date in 5 years on initialize' do
    expected_date = Date.today.next_year(5).strftime("%m/%y")
    expect(subject.exp_date).to eq expected_date
  end

  it 'is expected to have a balance of 0 on initialize' do
    expect(subject.balance).to eq 0
  end

  it 'is expected to have an active account status on initialize' do
    expect(subject.account_status).to eq :active
  end
end
