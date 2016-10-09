require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../person_behaviours/sing')
require_relative('../person_behaviours/not_singing')
require_relative('../person_behaviours/fight')

class TestGuest < MiniTest::Test

  def setup
    @guest_1 = Guest.new('Max', 'M', 32, Sing.new, 7.50, 'Hey Joe')
    @guest_2 = Guest.new('Ana', "F", 29, Fight.new, 77.0, 'Walking On Sunshine')
    @guest_3 = Guest.new('Daisy', 'F', 17, Not_singing.new, 2.20, 'Why')
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

  def test_guest_is_singing
    assert_equal("Whoohoo, I love singing!", @guest_1.mood)
  end

  def test_guest_is_not_singing
    assert_equal("Nah, you can't make me, I hate it!", @guest_3.mood)
  end

  def test_guest_is_fighting
    assert_equal("Come on then, let's have ya!", @guest_2.mood)
  end



end