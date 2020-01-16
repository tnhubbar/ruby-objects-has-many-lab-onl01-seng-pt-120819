class Post 
  attr_accessor  :author, :name
  
  @@all=[]


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
  
  def author_name
    author.name if author  
  end 
  
end 

