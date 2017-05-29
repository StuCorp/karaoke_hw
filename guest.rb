class Guest 

  def initialize(name, money, fav_song, location)
    @name = name
    @money = money
    @fav_song = fav_song
    @in_room = false
    @location = location
  end

  def in_room?
    return @in_room    
  end

  def set_in_room(verdict)
    @in_room = verdict
    
  end

  def get_name()
    return @name
  end

  def get_money()
    return @money 
  end

  def get_fav_song()
    return @fav_song
  end
  
  def get_location()
    return @location
  end

  def set_location(location)
    @location = location
  end


end