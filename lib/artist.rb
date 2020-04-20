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

def self.find_or_create_by_name(name)
  if self.find(name)
    self.find(name)
  else
    self.create(name)
  end
  self
end

def self.create(name)
  artist = self.new(name)
  save
  artist
end

def self.find(name)
    @@all.find {|artist|artist.name == name}
  end

def print_songs
  puts @songs.collect {|name| name.name}
end

end
