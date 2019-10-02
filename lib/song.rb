class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@count += 1
  end
  
  def self.genres
    @@genres
  end
  
  def self.artists
    artists = @@artists
    artists.each do |artist|
      if artists.include?(artist) == false
        artists << artist
      end
    end
      artists
  end
  
  def self.count
    @@count
  end
end