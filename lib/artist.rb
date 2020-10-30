# require 'pry'
# require './song.rb'
# require './genre.rb'
# class Song
#     @@all = []
#     attr_accessor :name, :artist, :genre
#     def initialize (name, artist, genre)
#         @name = name
#         @artist = artist
#         @genre = genre
#         @@all << self
#     end

#     def self.all
#         @@all
#     end
# end

# class Genre
#     @@all = []
#     attr_accessor :name
#     def initialize (name)
#         @name = name
#         @@all << self
#     end

#     def songs
#         Genre.all.collect{|genre|genre.name == self}
#     end

#     def artists
#         Genre.all.collect{|genre|genre.artist}
#     end

#     def self.all
#         @@all
#     end

# end

class Artist 

    @@all = []
    attr_accessor :name
    def initialize (name)
        @name = name
        @@all << self
    end

    def new_song (name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select{|song|song.artist == self}
    end

    def genres
        a = []
        Song.all.each do |song|
            if song.artist == self
                a << song.genre
            end
        end
        a
    end

    def self.all
        @@all
    end

end
# genre1 = Genre.new("rap")
# artist1 = Artist.new("kanye")
# artist1.new_song("hl", genre1)
# binding.pry