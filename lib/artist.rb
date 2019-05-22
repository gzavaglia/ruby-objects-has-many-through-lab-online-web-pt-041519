require_relative "../lib/genre.rb"
require_relative "../lib/song.rb"
require 'pry'
class Artist
  attr_accessor :name, :song, :genre
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def self.all 
    @@all
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    self.songs.last
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    Song.all.map do |song|
      song.genre
    end
  end
  
  # def new_song(song, genre)
  #   Song.new(song, self, genre)
  # end
  
  # def songs
  #   Song.all << @song
  #   Song.all
  # end
  
  # def genres
  #   Song.all.select do |song1|
  #     song1.genre == @genre
  #   end
  # end
  
end