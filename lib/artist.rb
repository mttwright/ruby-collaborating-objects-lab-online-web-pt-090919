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
  end
  

  
end