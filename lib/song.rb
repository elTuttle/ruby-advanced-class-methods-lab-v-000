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

  def self.find_by_name(name)
    @@all.each do |songs|
      if songs.name == name
        return songs
      end
    end
    nil
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name) != nil
      return self.find_by_name(name)
    else
      self.create_by_name(name)
    end
  end

  def self.alphabetical
    temp_array1 = []
    temp_array2 = []
    @@all.each do |songs|
      temp_array1 << songs.name
    end
    temp_array1 = temp_array1.sort
    temp_array1.each do |names|
      temp_array2 << self.find_by_name(names)
    end
    temp_array2
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
