require_relative('guest')

class Room

  attr_reader :room_name, :current_guest_register, :num_of_guests, :num_of_songs, :capacity

  def initialize(room_name, num_of_songs, capacity)
    @room_name = room_name
    @num_of_guests = 0
    @current_guest_register = []
    @num_of_songs = num_of_songs
    @capacity = capacity
  end

  def add_guests_to_room(num_of_guests_entering)
    if @num_of_guests + num_of_guests_entering < @capacity
      @num_of_guests += num_of_guests_entering
    end
    return @num_of_guests
  end

  def add_guests_name_to_register(guests)
    guests.each do |guest|
      @current_guest_register << guest.name
    end
    add_guests_to_room(guests.count)
    return @current_guest_register
  end

  def guests_leave_room(num_of_guests_leaving)
    return @num_of_guests -= num_of_guests_leaving
  end

  def delete_guest_name_from_register(guests)
    guests.each do |guest|
      @current_guest_register.delete(guest.name)
    end
    guests_leave_room(guests.count)
    return @current_guest_register
  end

  def songs_added(songs)
    return @num_of_songs += songs
  end

  def songs_deleted(songs)
    return @num_of_songs -= songs
  end

end