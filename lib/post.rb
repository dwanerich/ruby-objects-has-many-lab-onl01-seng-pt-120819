class Post

  attr_accessor :author, :title, :name
  @@all = []

  def initialize(title)
    @title = title
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.title
    @title
  end

  def author_name
    author.name

  end

end
