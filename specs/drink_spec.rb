require("minitest/autorun")
require_relative("../drink.rb")

class DrinkTest < MiniTest::Test

  def setup
    @drink = Drink.new("Beer", 3.0, 5)
  end

  def test_drink_has_name
    assert_equal("Beer", @drink.name)
  end

  def test_drink_has_price
    assert_equal(3.0, @drink.price)
  end

  def test_drink_has_alochol_level
    assert_equal(5, @drink.alcohol_level)
  end

end
