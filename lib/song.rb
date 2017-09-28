class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    create_song = self.new
    @@all << create_song
    self.all
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
