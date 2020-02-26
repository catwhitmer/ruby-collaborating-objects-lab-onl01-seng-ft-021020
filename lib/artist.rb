class Artist 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    self.class.all << self
  end
  
  def add_song(song)
    @songs << song 
    song.artist = self 
    song
  end
  
  def songs 
    @songs
  end
  
 
  

  
  def print_songs
    @songs.each do |song|
    puts song.name
  end
 end
  
end