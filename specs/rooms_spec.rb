require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')

class TestRooms < MiniTest::Test

  def setup
    @room_1 = Rooms.new('Red Room', 2, 100, 10)
    @room_2 = Rooms.new('Blue Room', 6, 200, 15)
  end

  def test_room_has_name
    assert_equal('Red Room', @room_1.room_name)
  end

  def test_number_of_guests
    assert_equal(2, @room_1.num_of_guests)
  end

  def test_number_of_songs
    assert_equal(200, @room_2.num_of_songs)
  end

  def test_room_capacity
    assert_equal(15, @room_2.capacity)
  end


end