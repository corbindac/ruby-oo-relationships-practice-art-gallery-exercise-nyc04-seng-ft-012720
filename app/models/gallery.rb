class Gallery

  @@all = []

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |paint|
      paint.gallery == self
    end
  end

  def artists
    paintings.map do |painting|
      painting.artist
    end
  end

  def artist_names
    artists.select do |artist|
      artist.name
    end
  end

  def most_expensive
    # expensive = 0
    # paintings.each.max do |painting|
    #   if painting.price > expensive
    #     expensive += painting.price
    #   end
    # end
    # return expensive
    paintings.max_by do |painting|
      painting.price
    end
  end
end
