require 'pry'

class MP3Importer

  attr_accessor :path


  def initialize(path)
    @path = path
  end

  def files
    Dir.chdir(@path) do | path |
        Dir.glob("*.mp3")
    end
  end

  def import
    #binding.pry
    if files.collect{ |file| Song.new_by_filename(file) }
      true
    else
      false
  end


end
