require ('MiniTest/autorun')
require ('MiniTest/rg')

require_relative '../song'
require_relative '../guest'


class TestSong < MiniTest::Test


def setup()
  @guest_1 = Guest.new("Stu", 500, "song_holder")
  @guest_2 = Guest.new("Col", 10, "song_holder")
  @guest_3 = Guest.new("Jia", 10, "song_holder")

  @humble = Song.new("Humble", "Kendrick Lamar")
  @vats = Song.new("Vats of urine", "Dangerdoom")
  @too_good = Song.new("Too good", "Drake")

  
end

def test_gets()
  assert_equal("Vats of urine", @vats.get_title())
  assert_equal("Drake", @too_good.get_artist())
  assert_equal("song_holder", @guest_3.get_fav_song())
end


end