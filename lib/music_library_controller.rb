class MusicLibraryController 
  
  def initialize(path)
    @path = path 
    import = MusicImporter.new(path = "./db/mp3s")
  end 
end 