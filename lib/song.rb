# Song
#   #new
#     initializes with a name, an artist, and a genre (FAILED - 6)
#   .all
#     knows about all song instances (FAILED - 7)
#   #genre
#     belongs to a genre (FAILED - 8)
#   #artist
#     belongs to a artist (FAILED - 9)

# The Song class needs a class variable @@all that begins as an empty array.
# The Song class needs a class method .all that lists each song in the class variable.
# A song should be initialized with a name, an artist, and a genre, and be saved in the @@all array.


class Song

    attr_accessor :genre, :artist, :name

    @@all = []

    def initialize(name, artist, genre)
        @name = name
        @genre = genre
        @artist = artist
        @@all << self
    end

    def self.all
        @@all
    end
end


  # class Song
  #
  #   attr_accessor :name, :artist, :genre
  #
  #   ALL = []
  #
  #   def initialize(name="", artist="", genre="")
  #    @name = name
  #    @artist = artist
  #    @genre = genre
  #    ALL << self
  #  end
  #
  #   def self.all
  #    ALL
  #  end
  #
  # end
