class MusicLibraryController 
  
  def initialize(path = "./db/mp3s")
    @path = path 
    import = MusicImporter.new(path)
    import 
  end 
end 