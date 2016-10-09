require_relative('person')

class Guest < Person

  attr_reader :funds, :favourite_song

  def initialize(name, sex, age, mood, funds, favourite_song)
    super(name, sex, age, mood)
    @funds = funds
    @favourite_song = favourite_song
  end





end