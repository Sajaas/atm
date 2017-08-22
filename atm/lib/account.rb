require 'date'

class Account
  STANDARD_VALIDITY_YRS = 5

  attr_accessor :owner, :pin_code, :exp_date, :account_status, :balance

  def initialize(attrs = {})
    @pin_code = rand(1000..9999)
    @exp_date = Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%y')
    @balance = 0
    @account_status = :active
    set_owner(attrs[:owner])
  end

  def deactivate
    @account_status = :deactivated
  end

  def set_owner(obj)
    obj == nil ? missing_owner : @owner = obj
  end

  def missing_owner
    raise 'An account owner is required'
  end
end
