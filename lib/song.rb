require 'pry'

class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@all = [] 
  
  def initialize(name, artist=nil, genre=nil)
    @name = name
    @@all << self 
    if artist == nil 
      @artist = artist
    else
      self.artist=(artist)
    end
    if genre == nil 
      @genre = genre
    else
      self.genre=(genre)
    end
  end 
  
  def self.all 
    @@all 
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.destroy_all 
    @@all.clear 
  end 
  
  def self.create(name)
    song_name = Song.new(name)
    song_name.save 
    song_name
  end 
  
  def artist=(artist)
    @artist = artist 
    artist.add_song(self)
  end 
  
  def genre=(genre)
    @genre = genre 
    genre.add_song(self)
  end 
  
  def genre 
    @genre 
  end 

  
  def self.find_by_name(name)
    self.all.find {|song| song.name == name} 
  end 
  
  def self.find_or_create_by_name(name) 
    
  end 

end 