require('minitest/autorun')
require('minitest/rg')
require_relative('../drink')

class TestPerson < MiniTest::Test

  def setup
    @drink_1 = Drink.new('vodka & coke', 2.50)
    @drink_2 = Drink.new('beer', 4.00)
    @drink_3 = Drink.new('half pt beer', 2.00)
    @drink_4 = Drink.new('coke', 1.00)
    @drink_5 = Drink.new('water', 0)
  end

  def test_drink_has_name
    assert_equal('beer', @drink_2.name)
  end

  def test_drink_has_price
    assert_equal(1.00, @drink_4.price)
  end







end