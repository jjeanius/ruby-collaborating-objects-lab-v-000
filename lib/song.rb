class Song

  attr_accessor :name, :song, :artist

  def initialize(name)
    @name = name
  end

  def artist_name(name)
    self.artist = Artist.find_or_create_by_name(name)

  end

  def self.new_by_filename(filename)
    # song = Song.new(filename)
    @song = self.new(filename.split(" - ")[1])
    self.artist.name = filename.split(" - ")[0]
    song
  end

end
