require ('MiniTest/autorun')
require ('MiniTest/rg')

require_relative '../guest'

class TestGuest < MiniTest::Test


def setup()
  @guest_1 = Guest.new("Stu", 500, "song_holder")
  @guest_2 = Guest.new("Col", 10, "song_holder")
  @guest_3 = Guest.new("Jia", 10, "song_holder")
end

def test_gets()
  assert_equal("Stu", @guest_1.get_name())
  assert_equal(10, @guest_2.get_money())
  assert_equal("song_holder", @guest_3.get_fav_song())
end


end