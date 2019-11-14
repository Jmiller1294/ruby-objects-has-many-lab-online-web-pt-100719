class Author 
  
  attr_accessor :name , :posts
  
  def initialize(name)
    @name = name 
    @posts = []
  end
  
  def posts
  Post.all.select do |a_post|
    a_post.author == self
  end
end
  
 

 
end