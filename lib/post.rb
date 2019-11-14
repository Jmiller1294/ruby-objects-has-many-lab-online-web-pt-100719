class Post 
  attr_accessor :author , :name
  
  @@all = []  
  
  def initilalize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end 
  
  
end