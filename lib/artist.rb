class Artist 
  attr_accessor :name 
  
 @@all = [] 
  
  def initialize(name)
    @name = name 
    save 
  end 
  
  
  def save 
    @@all << self 
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

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.song_count
    Song.all.count
  end
end