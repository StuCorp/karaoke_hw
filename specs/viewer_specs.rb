require ('MiniTest/autorun')
require ('MiniTest/rg')

require_relative '../song'
require_relative '../guest'
require_relative '../karaoke_machine'
require_relative '../room'
require_relative '../karaoke_bar'
require_relative '../viewer'


class TestKaraokeBar < MiniTest::Test


def setup()
 @guest_1 = Guest.new("Stu", 500, "song_holder")
 @guest_2 = Guest.new("Col", 10, "song_holder")
 @guest_3 = Guest.new("Jia", 10, "song_holder")
 @guests = [@guest_1, @guest_2, @guest_3]

 @humble = Song.new("Humble", "Kendrick Lamar")
 @vats = Song.new("Vats of urine", "Dangerdoom")
 @too_good = Song.new("Too good", "Drake")

 @karaoke_machine_1 = KaraokeMachine.new([@humble, @vats, @too_good])

 @funk_room = Room.new("Funk in drublic", 2, @karaoke_machine_1)
 @rooms = [@funk_room]

 @karaoke_bar = KaraokeBar.new(@rooms, @guests)
 @viewer = Viewer.new(@karaoke_bar)
end

def test_status_update()
  assert_equal("eee", @viewer.status())
  
end


end