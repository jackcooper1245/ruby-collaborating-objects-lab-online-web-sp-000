class Song

attr_accessor :name, :artist

@@all = []

def initialize(name)
  @name = name
  save
end

def self.new_by_filename(file)
  song_name = file.split(" - ")[1]
  artist = file.split(" - ")[0]
  song = self.new(song_name)
  song.artist.name = artist
  song
end

def artist_name=(name)
  song = Artist.find_or_create_by_name(name)
  Artist.name = self
  add_song(song)
end

def self.all
  @@all
end

def save
  @@all << self
end

end
