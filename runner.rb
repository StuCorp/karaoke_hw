require('pry')

require_relative 'song'
require_relative 'guest'
require_relative 'karaoke_machine'
require_relative 'room'
require_relative 'karaoke_bar'
require_relative 'viewer'


class Runner

  def initialize()
    # binding.pry

    @guest_1 = Guest.new("Stu", 500, "song_holder", @bar)
    @guest_2 = Guest.new("Col", 10, "song_holder", @bar)
    @guest_3 = Guest.new("Jia", 10, "song_holder", @bar)
    @guest_4 = Guest.new("Sam", 10, "song_holder", @bar)
    @guest_5 = Guest.new("Dale", 10, "song_holder", @bar)
    @guests = [@guest_1, @guest_2, @guest_3, @guest_4, @guest_5]

    @humble = Song.new("Humble", "Kendrick Lamar")
    @vats = Song.new("Vats of urine", "Dangerdoom")
    @too_good = Song.new("Too good", "Drake")
    @leave_it_alone = Song.new("Leave it alone", "Nofx")
    @joy_fantastic = Song.new("Joy fantastic", "Hudson Mohawke")

    @karaoke_machine_1 = KaraokeMachine.new([@humble, @vats, @too_good])
    @karaoke_machine_2 = KaraokeMachine.new([@leave_it_alone])
    @karaoke_machine_3 = KaraokeMachine.new([@joy_fantastic])
    @bar_machine = KaraokeMachine.new([])

    @bar = Room.new("The bar", 10, @bar_machine)
    @funk_room = Room.new("Funk in drublic", 2, @karaoke_machine_1)
    @punk_room = Room.new("Punk party", 3, @karaoke_machine_2)
    @aquacrunk_room = Room.new("Aquacrunk lounge", 1, @karaoke_machine_3)
    @rooms = [@bar, @funk_room, @punk_room, @aquacrunk_room]

    @karaoke_bar = KaraokeBar.new(@rooms, @guests)
    @viewer = Viewer.new(@karaoke_bar)
  end

  def run()
    while @karaoke_bar.end?
      @viewer.guest_list()
     @viewer.status()
     answer = @karaoke_bar.options_general()
     @karaoke_bar.action(answer)
     @viewer.status()

    end
  end
end

karaoke_party = Runner.new()

# binding.pry
karaoke_party.run()




#method - run()



#outside of class, a new insance of this class and the run() called on it. 