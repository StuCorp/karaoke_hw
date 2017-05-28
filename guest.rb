class Guest 

  def initialize(name, money, fav_song)
    @name = name
    @money = money
    @fav_song = fav_song
    @in_room = false
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
  


end