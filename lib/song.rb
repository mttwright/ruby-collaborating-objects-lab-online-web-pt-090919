require "pry"


class Song
  
  @@all = []
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
    @@all.push(self)
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    x = filename.split(" - ")
    y = x[1]
    z = x[0]
    
    new = self.new(y)
    
  end
  
  def artist_name=(name)
    found = false
    Artist.all.each do |artist|
      if artist.name == name
        self.artist=(artist)
        found = true
      end
    end
    
    if found == false
      x = Artist.new(name)
      x.add_song(self)
    end
    
  end
      
      
        
  
end