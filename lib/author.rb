class Author


  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    Post.all.select do |post|
      post.author == self
    end #FALSE POSITIVE!!!!!

  end
  #
  def add_post(post)
    @posts << post
    post.author = self
  end
  #
  def add_post_by_title(title)
    p = Post.new(title)
    add_post(p)
  end

  def post_count
    Post.all.size
  end

end
