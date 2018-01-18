require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
  #  @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
    @files ||= Dir.glob("./spec/fixtures/mp3s").collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
    #binding.pry
    files.collect { |file| Song.new_by_filename(file) }
  end


end
