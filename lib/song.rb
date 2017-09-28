class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    create_song = self.new
    @@all << create_song
    create_song
  end

  def self.new_by_name(name)
    create_song = self.new
    create_song.name = name
    @@all << create_song
    create_song
  end

  def self.create_by_name(name)
    create_song = self.new
    create_song.name = name
    @@all << create_song
    create_song.save
    create_song
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
