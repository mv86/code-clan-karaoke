# require('minitest/autorun')
# require('minitest/rg')
# require_relative('../register')

# class TestRegister < MiniTest::Test

#   def setup 
#     @room_1 = Room.new('Red Room', 100, 10)
#     @room_2 = Room.new('Blue Room', 200, 15)

#     @guest_1 = Guest.new('Max', 'M', 32, 7.50, 'Hey Joe')
#     @guest_2 = Guest.new('Ana', "F", 29, 77.0, 'Walking On Sunshine')
#     @guest_3 = Guest.new('Daisy', 'F', 17, 2.20, 'Why')
#     @register = Register.new
#   end

#   def test_room_accepts_more_guests
#     assert_equal(6, @register.add_guests_to_room(@room_1, 6))
#   end

#   def test_room_wont_go_over_capacity
#     assert_equal(0, @register.add_guests_to_room(@room_2, 16))
#   end

#   # def test_people_can_leave
#   #   @room_2.add_guests_to_room(9)
#   #   @room_2.guests_leave_room(5)
#   #   assert_equal(4, @room_2.num_of_guests)
#   # end

#   # def test_guest_details_added_to_room
#   #   assert_equal(['Ana'], @room_2.add_guest_name_to_room_register(@guest_2))
#   # end

#   # def test_guest_details_deleted_from_room
#   #   @room_2.add_guest_name_to_room_register(@guest_2)
#   #   @room_2.take_guest_name_of_register
#   # end









# end