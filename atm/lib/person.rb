class Person
  attr_accessor :name

  def initialize(attrs = {})
    set_name(attrs[:name])
  end

  def set_name(obj)
    @name = obj
  end
  
end
