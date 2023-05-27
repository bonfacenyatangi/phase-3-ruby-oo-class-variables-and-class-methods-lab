class Song

    attr_reader :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
    @@artist_count = {}
    @@genre_count = {}
  
   
  
    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
  
      @@count += 1
      @@genres << genre
      @@artists << artist
     
  
      @@artist_count[artist] ||= 0
      @@artist_count[artist] += 1
  
      @@genre_count[genre] ||= 0
      @@genre_count[genre] += 1
    end
  
    def self.count
      @@count
    end

    def self.genres
        @@genres.uniq
      end
  
    def self.artists
      @@artists.uniq
    end
  
    def self.artist_count
        @@artist_count
      end

    def self.genre_count
      @@genre_count
    end
   
  end
  
  # Creating instances of Song
song1 = Song.new("Bohemian Rhapsody", "Queen", "Rock")
song2 = Song.new("Shape of You", "Ed Sheeran", "Pop")
song3 = Song.new("Hallelujah", "Leonard Cohen", "Folk")

# Accessing instance variables
puts song1.name       # "Bohemian Rhapsody"
puts song2.artist     # "Ed Sheeran"
puts song3.genre      # "Folk"

# Class methods
puts Song.count        # 3
puts Song.genres       # ["Rock", "Pop", "Folk"]
puts Song.artists      # ["Queen", "Ed Sheeran", "Leonard Cohen"]
puts Song.artist_count # {"Queen"=>1, "Ed Sheeran"=>1, "Leonard Cohen"=>1}
puts Song.genre_count  # {"Rock"=>1, "Pop"=>1, "Folk"=>1}
