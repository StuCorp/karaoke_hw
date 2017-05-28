class Room

  def initialize(name, capacity, karaoke_machine)
    @name = name
    @capacity = capacity
    @guests = []
    @karaoke_machine = karaoke_machine
  end

def get_name()
  return @name
end

def get_guests()
  return @guests
end

# def guest_numbers()
#   return @guests.count()  
# end

def add_guest(guest)
  if @guests.count < @capacity
    @guests << guest
  else
    return "Room full"
  end
end



def get_guest_names()
  guest_list = []
  for guest in @guests
    guest_list << guest.get_name()
  end
  return guest_list
end

def eject_guest()
  @guests.pop()
  get_guest_names()
end

def eject_guest_by_name(name)
  for guest in @guests
    if guest.get_name == name
      @guests.delete(guest)
    end
  end
  
end

def get_tunes()
  return @karaoke_machine.puts_all_songs_available()
  
end


end