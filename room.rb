class Room

  attr_reader :room_name, :num_of_guests, :num_of_songs, :capacity

  def initialize(room_name, num_of_guests, num_of_songs, capacity)
    @room_name = room_name
    @num_of_guests = num_of_guests
    @num_of_songs = num_of_songs
    @capacity = capacity
  end

  def add_guests_to_room(num_of_guests_entering)
    if @num_of_guests + num_of_guests_entering < @capacity
      @num_of_guests += num_of_guests_entering
    else
      puts "I'm sorry, there's not enough room"
      return false
    end
    return @num_of_guests
  end

  def guests_leave_room(num_of_guests_leaving)
    return @num_of_guests -= num_of_guests_leaving
  end

  def songs_added(songs)
    return @num_of_songs += songs
  end

  def songs_deleted(songs)
    return @num_of_songs -= songs
  end

end