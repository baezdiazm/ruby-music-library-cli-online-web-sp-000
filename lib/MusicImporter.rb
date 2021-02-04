class MusicImporter
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def library
    library = []
  end

  def files
    @files = Dir.glob("#{path}/*.mp3").collect {|file| file.gsub("#{path}/", "")}
    #binding.pry
  end

  def import
    files.each { |file| Song.create_from_filename(file)}
  end

end
