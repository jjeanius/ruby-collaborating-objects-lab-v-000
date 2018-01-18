class Song

  attr_accessor :name, :song, :artist
  @@all = []
  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)

  end

  def self.new_by_filename(filename)
    artist, song = filename.spliot(" - ")
    song = self.new(song)
    song.artist.name = artist
    song.save
  end
