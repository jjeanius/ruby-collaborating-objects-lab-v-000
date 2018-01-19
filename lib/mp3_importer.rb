require 'pry'

class MP3Importer

  attr_accessor :path
   @@all =[]

  def initialize(path)
    @path = path
  end

  def files
    Dir.chdir(@path) do | path |
        Dir.glob("*.mp3")
    end
  end

  def self.all
    @@all
  end

  def import
files.collect{ |file| Song.new_by_filename(file) } !=0
#binding.pry
  end


end
