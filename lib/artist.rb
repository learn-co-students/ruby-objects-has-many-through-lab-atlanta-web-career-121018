require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
    #Song class is initialized with name, artist & genre
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    songs.collect do |song|
      #use created 'songs' method to iterate through & find all genres
      song.genre
    end
  end
end
