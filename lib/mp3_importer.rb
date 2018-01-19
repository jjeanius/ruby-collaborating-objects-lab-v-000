require 'pry'

class MP3Importer

  attr_accessor :path, :name

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
    #Dir.chdir(@path) do | path |
        #Dir.glob("*.mp3")
    end
  end

  def self.all
    @@all
  end

  def import
    files.each{|file| Song.new_by_filename(name)}
#binding.pry
    end
  end
