require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../person_behaviours/sing')
require_relative('../person_behaviours/not_singing')
require_relative('../person_behaviours/fight')

class TestRoom < MiniTest::Test

  def setup
    @room_1 = Room.new('Red Room', 100, 10)
    @room_2 = Room.new('Blue Room', 200, 15)

    @guest_1 = Guest.new('Max', 'M', 32, Sing.new, 7.50, 'Hey Joe')
    @guest_2 = Guest.new('Ana', "F", 29, Fight.new, 77.0, 'Walking On Sunshine')
    @guest_3 = Guest.new('Daisy', 'F', 17, Not_singing.new, 2.20, 'Why')
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
    assert_equal(0, @room_2.add_guests_to_room(16))
  end

  def test_people_can_leave
    @room_2.add_guests_to_room(9)
    @room_2.guests_leave_room(5)
    assert_equal(4, @room_2.num_of_guests)
  end

  def test_songs_added_to_room
    assert_equal(150, @room_1.songs_added(50))
  end

  def test_songs_deleted_from_room
    assert_equal(150, @room_2.songs_deleted(50))
  end

  def test_guest_details_added_to_room__single
    guest = [@guest_2]
    assert_equal(['Ana'], @room_1.add_guests_name_to_register(guest))
    assert_equal(1, @room_1.num_of_guests)
  end

  def test_guest_details_added_to_room__multiple
    guests = [@guest_1, @guest_2]
    assert_equal(['Max', 'Ana'], @room_2.add_guests_name_to_register(guests))
    assert_equal(2, @room_2.num_of_guests)
  end

  def test_guest_details_deleted_from_room__multiple
    guests = [@guest_1, @guest_2]
    assert_equal(['Max', 'Ana'], @room_2.add_guests_name_to_register(guests))
    assert_equal(2, @room_2.num_of_guests)
    assert_equal([], @room_2.delete_guest_name_from_register(guests))
    assert_equal(0, @room_2.num_of_guests)
  end


end