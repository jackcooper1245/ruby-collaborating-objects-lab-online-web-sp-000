class Song

attr_accessor :name, :artist

@@all = []

def initialize(name)
  @name = name
  save
end

def self.new_by_filename(filename)
  song = self.new
  song.title = filename.split(" - ")[1]
  song
end

def self.all
  @@all
end

def save
  @@all << self
end

end
