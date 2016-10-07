class Songs

  attr_reader :artist, :title, :length

  def initialize(artist, title, length)
    @artist = artist
    @title = title
    @length = length
  end


end