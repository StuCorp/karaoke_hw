require ('MiniTest/autorun')
require ('MiniTest/rg')

require_relative '../song'
require_relative '../guest'
require_relative '../karaoke_machine'


class TestKaraokeMachine < MiniTest::Test


def setup()
  @guest_1 = Guest.new("Stu", 500, "song_holder")
  @guest_2 = Guest.new("Col", 10, "song_holder")
  @guest_3 = Guest.new("Jia", 10, "song_holder")

  @humble = Song.new("Humble", "Kendrick Lamar")
  @vats = Song.new("Vats of urine", "Dangerdoom")
  @too_good = Song.new("Too good", "Drake")

  @karaoke_machine_1 = KaraokeMachine.new([@humble, @vats, @too_good])
end

def test_song_count()
  assert_equal(3, @karaoke_machine_1.song_count())  
end

def test_song_list()
  assert_equal([@humble, @vats, @too_good], @karaoke_machine_1.get_song_list())
end

def test_puts_song_by_index()
  assert_equal("Humble by Kendrick Lamar", @karaoke_machine_1.puts_song_by_index(0))
end

def test_puts_all_songs_available()
  assert_equal("1) Humble by Kendrick Lamar 2) Vats of urine by Dangerdoom 3) Too good by Drake", @karaoke_machine_1.puts_all_songs_available())
end

def test_add_song()
  party_up = Song.new("Party up", "DMX")
  @karaoke_machine_1.add_song(party_up)
  assert_equal("Party up by DMX", @karaoke_machine_1.puts_song_by_index(3))
end
  
end