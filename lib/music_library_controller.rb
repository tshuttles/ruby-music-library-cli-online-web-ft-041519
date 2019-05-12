class MusicLibraryController 
  
  def initialize(path)
    @path = path 
    import = MusicImporter.new(path)
  end 
end 