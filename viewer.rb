class Viewer

def initialize(karaoke_bar)
  @karaoke_bar = karaoke_bar
  @guests = @karaoke_bar.get_guests()
  @current_guest = @karaoke_bar.get_current_guest()
end

def status
 
  puts "#{@current_guest.get_name} is around"
  
  puts "They have #{@current_guest.get_money} and their favourite song is #{@current_guest.get_fav_song()}"
end

def guest_list
  puts "Choose a guest"
  @karaoke_bar.get_guest_choice()

end



def sings(song)
  puts "#{@current_guest.get_name} sings #{@song.get_title} by #{@song.get_artist}"
  
end


end
