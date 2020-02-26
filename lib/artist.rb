class Artist 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    @songs << song 
    song.artist = self 
    song
  end
  
  def songs 
    @songs
  end
  
  def save
    self.class.all << self
  end
  
  def self.find_or_create_by_name(name)
    self.all.detect {|artist| artist.name == name} || Artist.new(name).save
  end
  
  def print_songs
    @songs.each do |song|
    puts song.name
  end
 end
  
end