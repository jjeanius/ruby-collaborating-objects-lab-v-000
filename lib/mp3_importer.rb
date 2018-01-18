require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob('./spec/fixtures/mp3s').collect{ |f| f.gsub("#{path}/", "") }
  end

  def import
    binding.pry
    files.collect { |file| Song.new_by_filename(file) }
  end


end
