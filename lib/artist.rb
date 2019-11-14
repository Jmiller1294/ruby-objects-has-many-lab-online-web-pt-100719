class Artist 

attr_accessor :name , :songs

@@song_count = 1

def initialize(name)
  @name = name
  @song = []
end

def songs
  Song.all.select do |song|
    song.artist == self
  end
end

def add_song(song)
  @song << song
  song.artist = self
  @@song_count += 1
end

def add_song_by_name(name)
  song = Song.new(name)
  @song << song
  song.artist = self
  @@song_count += 1
end

def self.song_count
  @@song_count 
end


end