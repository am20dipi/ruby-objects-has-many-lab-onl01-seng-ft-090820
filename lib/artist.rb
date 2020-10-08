class Artist
  attr_accessor :name, :songs
  
  @@song_count = 0
  @@all = []
  
  def initialize(name)
    @name = name
    #@@all << self
  end
  
  def songs
    @songs << self
  end
  
  def add_song(songs)
    @songs << songs
    songs.artist = self#this is telling a song that it belongs to an artist; self keyword refers to the artist on which we are calling this method
    @@song_count +=1
  end
  
  def self.all
    @@all
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    @songs << songs
    songs.artist = self
    add_song(song)
    @@song_count +=1
  end
  
  def self.song_count
    @@song_count
  end
end