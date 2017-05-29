class KaraokeBar


  def initialize (rooms, guests)
    @rooms = rooms
    @guests = guests 
    @karaoke_on = true
    @current_guest = @guests[0]
    @current_location = @current_guest.get_location

  end



  def get_guests()
    return @guests  
  end

  def get_rooms()
    return @rooms  
  end

  def get_current_location
    return @current_location
    
  end

  def get_current_guest()
    return @current_guest  
  end 

  def set_current_guest(choice)
    binding.pry
    @current_guest = @guests[choice]
  end

  def next_guest()
    @current_guest = @guests.rotate![0]
  end

  def get_room_names()
    room_names =[]
    for room in @rooms 
      room_names << room.get_name()
    end 
    return room_names
  end

  def get_guest_names()
    guest_names = []
    for guest in @guests
      guest_names << guest.get_name()
    end
    return guest_names
  end

  


  def get_guest_choice()
    answer = -1
    while !(answer > 0 && answer < (@guests.count() +1) )  
     menu_list = []
     index = 1 
     for guest in @guests
      menu_list << "#{index}) " + "#{guest.get_name}"
      index += 1
    end
    puts menu_list.join(" ")
    answer = gets.chomp.to_i
  end
  set_current_guest(answer - 1)
end

def end?
  return @karaoke_on  
end



def options_general
  answer = -1
  while !(answer > 0 && answer <5)  
    puts "yours options are:"
    puts "1) go somewhere"
    puts "2) sing something"
    puts "3) change guest"
    puts "4) leave karaoke bar"
    answer = gets.chomp.to_i
  end
  return answer
end

def action(answer)
  case answer
  when 1 
    room_choice = location_request() -1 
    @rooms[room_choice].add_guest(@current_guest)
    @current_guest.set_location(@rooms[room_choice])
  when 2 
    song_choice_index = song_request() -1 
    song_choice = @current_guest.get_location.get_karaoke_machine.puts_song_by_index(song_choice_index)
    puts "#{@current_guest.get_name()} sings " + song_choice 
  when 3 then next_guest()
  when 4 
    puts "thanks for visiting karaoke land or whatever"
    @karaoke_on = false
  end
end

def location_request()
  answer = -1
  while !(answer > 0 && answer < @rooms.count())
    puts "where do you want to go?"
    puts "your options are "
    puts get_room_names()
    answer = gets.chomp.to_i
  end
  return answer
end

def song_request()
  if @current_guest.get_location() == "karaoke bar"
    "#{@current_guest.get_name} is in the karaoke bar. you need to be in a room to sing!"
    options_general()
  else
    answer = -1
    while !(answer > 0 && answer <5)  
        # binding.pry
        puts "choose a song. the jukebox in #{@current_guest.get_location.get_name} is #{@current_guest.get_location.get_karaoke_machine.puts_all_songs_available()}"
        answer = gets.chomp.to_i
      end
      return answer
    end
  end


end