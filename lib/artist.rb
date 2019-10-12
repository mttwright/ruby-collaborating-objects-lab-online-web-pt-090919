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
    Song.all.each do |song|
      if song.artist
        @songs.push(song) if song.artist.name == self.name
      end
    end
    @songs
  end
  
  def add_song(song)
    @songs.push(song)
  end
  
end