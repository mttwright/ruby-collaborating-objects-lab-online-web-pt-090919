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
  
      
      
        
  
end