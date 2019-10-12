require "pry"

class Artist
  
  @@all = []
  attr_accessor :name
  
  
  def initialize(name)
    @name = name
    @@all.push(self)
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def songs
    @songs
  end
  
  def add_song(song)
    @songs.push(song)
  end
  
  def self.find_or_create_by_name(name)
    @@all.
    
  

  
end