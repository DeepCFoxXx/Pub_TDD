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

end
