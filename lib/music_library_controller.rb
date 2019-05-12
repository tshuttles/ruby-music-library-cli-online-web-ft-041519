class MusicLibraryController 
  
  def initialize(path = "./db/mp3s")
    @path = path 
    import_music = MusicImporter.new(path)
    import_music.import
  end 
  
  def call 
    puts "Welcome to your music library!"
    puts 
  end 
end 