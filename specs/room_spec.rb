require('minitest/autorun')
require('minitest/rg')
require_relative('../room')

class TestRoom < MiniTest::Test

  def setup
    @room_1 = Room.new('Red Room', 100, 10)
    @room_2 = Room.new('Blue Room', 200, 15)
  end

  def test_room_has_name
    assert_equal('Red Room', @room_1.room_name)
  end

  def test_number_of_guests
    assert_equal(0, @room_1.num_of_guests)
  end

  def test_number_of_songs
    assert_equal(200, @room_2.num_of_songs)
  end

  def test_room_capacity
    assert_equal(15, @room_2.capacity)
  end

  def test_room_accepts_more_guests
    assert_equal(6, @room_1.add_guests_to_room(6))
  end

  def test_room_wont_go_over_capacity
    assert_equal(false, @room_2.add_guests_to_room(16))
  end

  # def test_people_can_leave
  #   group_of_six = @room_2.add_guests_to_room(6)
  #   assert_equal(2, group_of_six.guests_leave_room(4))
  # end

  def test_songs_added_to_room
    assert_equal(150, @room_1.songs_added(50))
  end

  def test_songs_deleted_from_room
    assert_equal(150, @room_2.songs_deleted(50))
  end


end