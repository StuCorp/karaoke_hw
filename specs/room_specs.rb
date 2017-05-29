require ('MiniTest/autorun')
require ('MiniTest/rg')

require_relative '../song'
require_relative '../guest'
require_relative '../karaoke_machine'
require_relative '../room'


class TestRoom < MiniTest::Test


def setup()
  @guest_1 = Guest.new("Stu", 500, "song_holder")
  @guest_2 = Guest.new("Col", 10, "song_holder")
  @guest_3 = Guest.new("Jia", 10, "song_holder")

  @humble = Song.new("Humble", "Kendrick Lamar")
  @vats = Song.new("Vats of urine", "Dangerdoom")
  @too_good = Song.new("Too good", "Drake")

  @karaoke_machine_1 = KaraokeMachine.new([@humble, @vats, @too_good])

  @funk_room = Room.new("Funk in drublic", 2, @karaoke_machine_1)
end

def test_room_get_name()
   assert_equal("Funk in drublic", @funk_room.get_name())
end

def test_get_guest_list()
  assert_equal([], @funk_room.get_guests())
end

def test_add_guest()
  @funk_room.add_guest(@guest_1)
  @funk_room.add_guest(@guest_2)
  assert_equal(["Stu", "Col",], @funk_room.get_guest_names()) 
end

def test_add_guest_over_capacity()
  @funk_room.add_guest(@guest_1)
  @funk_room.add_guest(@guest_2)
  @funk_room.add_guest(@guest_3)
  assert_equal(["Stu", "Col",], @funk_room.get_guest_names()) 
end

def test_get_room_song_list()
  assert_equal("1) Humble by Kendrick Lamar 2) Vats of urine by Dangerdoom 3) Too good by Drake", @funk_room.get_tunes())
end

def test_eject_guest()
  @funk_room.add_guest(@guest_1)
  @funk_room.add_guest(@guest_2)
  assert_equal(["Stu"], @funk_room.eject_guest())
end

def test_eject_guest_by_name()
  @funk_room.add_guest(@guest_1)
  @funk_room.add_guest(@guest_2)
  @funk_room.eject_guest_by_name("Stu")
  assert_equal(["Col",], @funk_room.get_guest_names()) 
end
  
end