class Rooms

  attr_reader :room_name, :num_of_guests, :num_of_songs, :capacity

  def initialize(room_name, num_of_guests, num_of_songs, capacity)
    @room_name = room_name
    @num_of_guests = num_of_guests
    @num_of_songs = num_of_songs
    @capacity = capacity
  end




end