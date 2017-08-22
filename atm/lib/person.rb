require './lib/account.rb'

class Person
  attr_accessor :name, :cash, :account

  def initialize(attrs = {})
    set_name(attrs[:name])
    @cash = 0
  end

  def set_name(obj)
    obj == nil ? missing_name : @name = obj
  end

  def missing_name
    raise 'A name is required'
  end

  def create_account
    @account = Account.new(owner: self)
  end

  def deposit(amount)
    @account == nil ? missing_account : add_funds(amount)
  end

  def add_funds(amount)
    @cash -= amount
    @account.balance += amount
  end

  def get_cash(args = {})
    atm = args[:atm]
    response = atm.withdraw(args[:amount], args[:pin_code], args[:account])
    @cash += args[:amount]
    return response
  end

  def missing_account
    raise 'no account present'
  end
end
