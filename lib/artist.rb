class Artist

attr_accesor :name

@@all = []

def initialize
@@all << self
end

end