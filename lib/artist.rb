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
if  @@all.include? {|name| name == name}
else name = artist.new


end

end
