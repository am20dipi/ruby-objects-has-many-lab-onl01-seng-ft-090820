class Author 
  attr_accessor :name, :post, :title
  
  @@count = 0
  @@all = []
  
  def initialize(name)
    @name = name
    @posts = post
    @@count += 1
    @@all << self
  end
  
  #def posts= (posts)
   # @posts = posts
  #end 
  
  def title= (title)
    @title = title
  end
  
  def add_post(post)
    @posts << posts
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    add_post(posts)
  end
  
  
  def self.post_count
    @@count << self
  end
end