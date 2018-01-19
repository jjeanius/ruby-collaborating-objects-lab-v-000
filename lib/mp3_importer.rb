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
files.find{ |file| self.find_or_create_by_name(name) }
#binding.pry
  end


end
