require './lib/person'
require './lib/atm'

describe Person do
  subject { described_class.new(name: 'Amanda') }

  it 'is expected to have a :name on init' do
    expect(subject.name).not_to be nil
  end

  it 'is expected to raise error if no name is set' do
    expect { described_class.new }.to raise_error 'A name is required'
  end
end
