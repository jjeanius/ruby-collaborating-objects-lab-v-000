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
    if @path!= pfiles.collect{ |file| Song.new_by_filename(file) }
      false
    else
      true


  end

end
