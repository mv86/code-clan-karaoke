require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class TestGuest < MiniTest::Test

  def setup
    @guest_1 = Guest.new('Max', 'M', 32, 7.50, 'Hey Joe')
    @guest_2 = Guest.new('Ana', "F", 29, 77.0, 'Walking On Sunshine')
    @guest_3 = Guest.new('Daisy', 'F', 17, 2.20, 'Why')
  end

  def test_guest_ammount_of_money
    assert_equal(2.20, @guest_3.funds)
  end

  def test_guest_name
    assert_equal("Max", @guest_1.name)
  end

  def test_guest_favourite_song
    assert_equal('Why', @guest_3.favourite_song)
  end



end