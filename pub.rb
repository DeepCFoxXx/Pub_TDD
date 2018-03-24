class Pub

  attr_reader :name, :till, :drinks

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

  def customer_too_young?(customer)
    return customer.age < 18
  end

  def customer_too_drunk?(customer)
    return customer.drunkenness >= 50
  end

end
