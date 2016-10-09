require('minitest/autorun')
require('minitest/rg')
require_relative('../bar')
#require_relative('../drink')
#require_relative('../guest')

class TestBar < MiniTest::Test

  def setup
    @guest_1 = Guest.new('Max', 'M', 32, 7.50, 'Hey Joe')
    @guest_2 = Guest.new('Ana', "F", 29, 77.0, 'Walking On Sunshine')
    @guest_3 = Guest.new('Daisy', 'F', 17, 2.20, 'Why')
    @drink_1 = Drink.new('vodka & coke', 2.50)
    @drink_2 = Drink.new('beer', 4.00)
    @drink_3 = Drink.new('half pt beer', 2.00)
    @drink_4 = Drink.new('coke', 1.00)
    @drink_5 = Drink.new('water', 0)
    @bar = Bar.new
  end

  def test_guest_can_afford_drink
    assert_equal(true, @bar.guest_buys_drink?(@guest_1, @drink_2))
  end

  def test_guest_cant_afford_drink
    assert_equal(false, @bar.guest_buys_drink?(@guest_3, @drink_1))
  end

  def test_guest_under_18_cant_buy_alcohol
    assert_equal(false, @bar.guest_buys_drink?(@guest_3, @drink_3))
  end





end