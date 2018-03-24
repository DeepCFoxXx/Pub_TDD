require("minitest/autorun")
require_relative("../customer.rb")
require_relative("../drink.rb")

class CustomerTest < MiniTest::Test

  def setup
    @drink = Drink.new("Beer", 3.0, 5)
    @customer = Customer.new("Kara", 10.0, 30, 0)
  end

  def test_customer_has_name
    assert_equal("Kara", @customer.name)
  end

  def test_customer_has_wallet
    assert_equal(10.0, @customer.wallet)
  end

  def test_customer_has_age
    assert_equal(30, @customer.age)
  end

  def test_customer_has_drunkenness
    assert_equal(0, @customer.drunkenness)
  end

  def test_sufficient_funds__true_if_enough
    assert_equal(true, @customer.sufficient_funds?(@drink))
  end

end
