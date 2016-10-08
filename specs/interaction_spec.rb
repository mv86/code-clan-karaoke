# require('minitest/autorun')
# require('minitest/rg')
# require_relative('../interaction')
# require_relative('../drink')
# require_relative('../guest')
# require_relative('../room')
# require_relative('../song')

# class TestInteraction < MiniTest::Test

#   def setup
#     @guest_1 = Guest.new('Max', 'M', 32, 7.50, 'Hey Joe')
#     @guest_2 = Guest.new('Ana', "F", 29, 77.0, 'Walking On Sunshine')
#     @guest_3 = Guest.new('Daisy', 'F', 17, 2.20, 'Why')
#     @drink_1 = Drink.new('vodka & coke', 2.50)
#     @drink_2 = Drink.new('beer', 4.00)
#     @drink_3 = Drink.new('coke', 1.00)
#     @drink_4 = Drink.new('water', 0)
#     @song_1 = Song.new('Jimi Hendrix', 'Hey Joe', 3.54)
#     @song_2 = Song.new('Carly Simon', 'Why', 4.12)
#     @room_1 = Room.new('Red Room', 100, 10)
#     @room_2 = Room.new('Blue Room', 200, 15)
#     @interaction = Interaction.new
#   end

#   def test_guest_can_afford_drink
#     assert_equal(true, @interaction.guest_buys_drink?(@guest_1, @drink_2))
#   end

#   # def test_guest_has_name
#   #   assert_equal('Max', @guest_1.name)
#   # end

#   # def test_guest_cant_afford_drink
#   #   assert_equal(false, @guest_3.guest_buys_drink?(@drink_1))
#   # end








# end