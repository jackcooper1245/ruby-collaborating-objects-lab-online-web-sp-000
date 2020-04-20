class Artist

attr_accessor :name

@@all = []
@songs = []

def initialize(name)
  @name = name
  @songs = []
  save
end

def self.all
  @@all
end

def add_song(song)
      song.artist = self
      @@song_count += 1
    end

def save
  @@all << self
end

end
