class Artist

attr_accessor :name, :songs

@@all = []

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
  @songs << song
end

def save
  @@all << self
end

def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
end

end
