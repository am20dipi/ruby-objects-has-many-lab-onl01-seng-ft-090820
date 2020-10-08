class Author 
  attr_accessor :name, :post, :title
  
  @@post_count = 0
  #@@all = []
  
  def initialize(name)
    @name = name
    @posts = post
    #@@all << self
  end
  
  def posts
   Post.all.select {|post| post.author == self}
 end
  
  def title= (title)
    @title = title
  end
  
  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    add_post(posts)
  end
  
  
  def self.post_count
    @@count << self
  end
end