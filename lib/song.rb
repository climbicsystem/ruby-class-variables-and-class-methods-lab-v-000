require 'pry'

class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    Song.artists
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.any?{|index| index == @genre}
  end

  def self.artists
    @@artists << @artist if @@artists.all?{|index| index != @artist}
  end

  def genre_count

  end

  def artist_count

  end
end
