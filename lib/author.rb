class Author  
  attr_accessor :name 
  
 @@all = [] 
  
  def initialize(name)
    @name = name 
    save 
  end 
  
  def self.all 
    @@all
  end 
  
  def save 
    @@all << self 
  end 
  
  def add_post(post) 
    post.author = self 
  end 
  
  
  def songs 
    Post.all.select {|post| post.author == self}
  end 
  
 def add_post_by_name(name)
    post = Post.new(name)
    post.author = self
  end
  
  def self.post_count
    Post.all.count
  end

  
  
end 