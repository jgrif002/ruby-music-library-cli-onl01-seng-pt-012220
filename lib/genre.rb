class Genre 
  extend Concerns::Findable
  
  attr_accessor :name, :songs 
  @@all = []
  
  def initialize(name) 
    @name = name 
    @songs = [] 
    save 
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.all
    @@all
  end 
  
  def self.destroy_all
    @@all.clear 
  end 
  
  def self.create(name)
    self.new(name)
  end 
  
  def artists  
    songs.map(&:artist).uniq 
  end 
end 