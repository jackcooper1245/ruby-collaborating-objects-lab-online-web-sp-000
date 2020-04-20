class MP3Importer

attr_accessor :path, :files

def initialize(path)
  @path = path 
  @files = dir /s *.mp3 >listmp3.txt
end

end
