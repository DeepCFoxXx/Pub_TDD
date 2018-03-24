require("minitest/autorun")
require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new("The Old Oak", 100.0, @drinks)
    @drink1 = Drink.new("Beer", 3.0, 5)
    @drink2 = Drink.new("Vodka", 5.0, 15)
    @drink3 = Drink.new("Rum", 4.0, 10)
    @drinks = [@drink1, @drink2]
    @customer1 = Customer.new("Kara", 10.0, 30, 0)
    @customer2 = Customer.new("Liea", 15.0, 17, 0)
    @customer3 = Customer.new("Stacy", 100.0, 25, 0)
  end

  def test_pub_has_name
    assert_equal("The Old Oak", @pub.name)
  end

  def test_pub_has_till
    assert_equal(100, @pub.till)
  end

  def test_pub_has_drinks
    assert_equal(2, @drinks.length)
  end

  def test_customer_too_young__returns_true
    assert_equal(true, @pub.customer_too_young?(@customer2))
  end

  def test_customer_too_young__returns_false
    assert_equal(false, @pub.customer_too_young?(@customer1))
  end

  def test_customer_too_drunk__returns_false
    assert_equal(false, @pub.customer_too_drunk?(@customer1))
  end

  def test_customer_too_drunk__returns_true
    @pub.serve(@customer3, @drink2)
    @pub.serve(@customer3, @drink2)
    @pub.serve(@customer3, @drink2)
    @pub.serve(@customer3, @drink2)
    @pub.serve(@customer3, @drink2)
    @pub.serve(@customer3, @drink2)
    assert_equal(true, @pub.customer_too_drunk?(@customer3))
  end

  def test_pub_can_serve
    @pub.serve(@customer1, @drink3)
    assert_equal(6.0, @customer1.wallet)
    assert_equal(104.0, @pub.till)
  end

end
