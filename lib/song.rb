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
    if self.artist
      self.artist.name = name
    else
      nil
    end
  end
  
  def self.new_by_filename(filename)
    x = filename.split(" - ")
    y = x[1]
    z = x[0]
    
    new = self.new(y)
    
  end
  
      
      
        
  
end