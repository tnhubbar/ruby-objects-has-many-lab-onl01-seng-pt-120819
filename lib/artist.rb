class Artist 
  attr_accessor :name 
  
 @@songs = [] 
  
  def initialize(name)
    @name = name 
    @songs = []
    save 
  end 
  
  
  def save 
    @@songs << self 
  end 
  
  def add_song(song) 
    song.artist = self 
  end 
  
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end 
  
  def add_song_by_name(name, genre)
    song = Song.new(name, genre)
    add_song(song)
  end
  
  

  
  
end 