require 'pry'

class MusicLibraryController 
  
  def initialize(path = "./db/mp3s")
    @path = path 
    import_music = MusicImporter.new(path)
    import_music.import
  end 
  
  def call 
    input = ""
      puts "Welcome to your music library!"
      puts "To list all of your songs, enter 'list songs'."
      puts "To list all of the artists in your library, enter 'list artists'."
      puts "To list all of the genres in your library, enter 'list genres'."
      puts "To list all of the songs by a particular artist, enter 'list artist'."
      puts "To list all of the songs of a particular genre, enter 'list genre'."
      puts "To play a song, enter 'play song'."
      puts "To quit, type 'exit'."
      puts "What would you like to do?"
      
      until input == "exit" 
        input = gets.strip 
        if input == "list songs" 
          list_songs 
        elsif input == "list artists" 
          list_artists 
        elsif input == "list genres" 
          list_genres 
        elsif input == "list artist"
          list_artist 
        elsif input == "list genre"
          list_genre
        elsif input == "play song" 
          play_song 
        end 
      end   
  end 
  
  def list_songs 
    song_list = Song.all.sort_by {|song| song.name} 
    song_list.each.with_index(1) {|song, index| puts "#{index}. #{song.artist.name} - #{song.name} - #{song.genre.name}"}
  end 
  
  def list_artists
    artist_list = Artist.all.sort_by {|artist| artist.name} 
    artist_list.each.with_index(1) {|artist, index| puts "#{index}. #{artist.name}"}
  end 
  
  def list_genres 
    genre_list = Genre.all.sort_by {|genre| genre.name} 
    genre_list.each.with_index(1) {|genre, index| puts "#{index}. #{genre.name}"}
  end 
  
  def list_songs_by_artist 
    puts "Please enter the name of an artist:"
    artist_name = gets.strip 
    if Artist 
    end 
  end 
end 