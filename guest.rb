require_relative('person')

class Guest < Person

  attr_reader :funds, :favourite_song

  def initialize(name, sex, age, funds, favourite_song)
    super(name, sex, age)
    @funds = funds
    @favourite_song = favourite_song
  end





end