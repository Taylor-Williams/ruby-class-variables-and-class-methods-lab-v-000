class Song

  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name :artist :genre
  
  def initialize(name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist if !@@artists.include?(artist)
    @@genres << genre if !@@genres.inclue?(genre)
  end

  def self.count
    @@count
  end

  def genre_count
    
  end

end
