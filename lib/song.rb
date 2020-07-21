class Song
  attr_reader :name, :genre
  attr_accessor :artist
  @@all = []

  def self.all
    @@all
  end

  def initialize(name, artist, genre)
    @name = name
    self.artist = artist
    @genre = genre
    self.class.all << self
  end

end
