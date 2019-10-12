class MP3Importer
  
  attr_reader :path
  
  def initialize(filename)
    @path = filename
  end
  
  def files
    @files = Dir.glob("#{@path}/*.mp3")
    @files.collect do |file|
      file.gsub("#{path}/", "")
    end
  end
  
  def import
    self.files.each do |song|
      Song.new_by_filename(song)
    end
  end
  
end