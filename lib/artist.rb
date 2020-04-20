class Artist

attr_accessor :name

@@all = []
@songs = []

def initialize(name)
  @name = name
  @songs = []

  @@all << self
end

def self.all
  @@all
end

def add_song(song)
  song.artist = self
  @song << song
end

end
