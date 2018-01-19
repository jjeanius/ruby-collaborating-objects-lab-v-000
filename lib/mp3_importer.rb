require 'pry'

class MP3Importer

  attr_accessor :path, :name

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("./spec/fixtures/mp3s").collect{ |f| f.gsub("./spec/fixtures/mp3s") }
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
