class Song

  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist if !@@artists.include?(artist)
    @@genres << genre
  end

  def count
    @@count
  end

  def genres
    @@genres.uniq
  end

  def artists
    @@artists
  end

  def genre_count
    genre_count = {}
    @@genres.each do |genre|
      genre_count[genre] = 0 if !genre_count.keys.include?(genre)
      genre_count[genre] += 1
    end
    genre_count
  end

end
