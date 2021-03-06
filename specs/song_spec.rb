require('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class TestSong < MiniTest::Test

  def setup 
    @song_1 = Song.new('Jimi Hendrix', 'Hey Joe', 3.54)
    @song_2 = Song.new('Carly Simon', 'Why', 4.12)
  end

  def test_artist_name
    assert_equal('Jimi Hendrix', @song_1.artist)
  end

  def test_song_title
    assert_equal('Why', @song_2.title)
  end

  def test_song_length
    assert_equal(4.12, @song_2.length)
  end



end