class MusicLibraryController 
  
  def initialize(path)
    @path = path 
    file = MusicImporter.new(path)
  end 
end 