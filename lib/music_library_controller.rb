class MusicLibraryController 
  
  def initialize(path = "./db/mp3s")
    @path = path 
    import = MusicImporter.new(path)
    MusicImporter(import)
  end 
end 