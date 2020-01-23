class Song

  attr_accessor :artist, :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.name
    @name
  end

  def artist
    artist.name
  end

end
