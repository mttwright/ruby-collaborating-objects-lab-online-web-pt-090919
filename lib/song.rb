require "pry"


class Song
  
  @@all = []
  attr_accessor :name
  attr_reader :artist
  
  def initialize(name)
    @name = name
    @@all.push(self)
  end
  
  def self.all
    @@all
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
  def artist_name=(name)
    x = Artist.find_or_create_by_name(name)
    self.artist=(x)
  end
  
  def self.new_by_filename(filename)
    x = filename.split(" - ")
    y = x[1]
    z = x[0]
    
    new = self.new(y)
    new.artist_name=(z)
    new
    
  end
  
      
      
        
  
end