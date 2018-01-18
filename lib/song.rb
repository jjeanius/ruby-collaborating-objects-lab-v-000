class Song

  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
  end

  def artist_name(name)
    self.artist.name
  end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    song = self.new(song)
    song.artist.name = artist
    song.save
  end


end
