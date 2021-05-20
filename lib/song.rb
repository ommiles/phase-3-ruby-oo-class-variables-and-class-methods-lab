class Song

    # getter and setter methods for name, artist and genre
    attr_accessor :name, :artist, :genre

    @@count=0
    @@artists=[]
    @@genres=[]

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1 # add to new songs count
        @@genres << genre # shovel genre to end of @@genres array
        @@artists << artist # shovel artist to end of @@artists array
    end
    
    # class method
    def self.count
        @@count
    end
    
    # class method
    def self.artists
        @@artists.uniq #uniq method removes duplicates in an array
    end
    
    # class method
    def self.genres
        @@genres.uniq
    end
    
    # class method
    def self.genre_count
        # declare an empty hash
        # loop through genres array for class
        # number of songs in that genre from genre_count method
        # add genre key and increment via conditionals
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] += 1 
            else
                genre_count[genre] = 1
            end
        end
        genre_count
    end
    
    # class method
    def self.artist_count
        # declare an empty hash
        # loop through artists array
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1 
            else
                artist_count[artist] = 1
            end
        end
        artist_count
    end
end