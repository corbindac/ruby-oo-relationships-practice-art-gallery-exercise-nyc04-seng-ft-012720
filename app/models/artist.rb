class Artist

  @@all = [] #Array for self.all

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all #Returns an array of artists
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    #paintings.map(&:gallery).uniq
     paintings.map do |painting|
       painting.gallery
    end
  end

  def cities
    galleries.map do |gallery|
      gallery.city
    end
  end

  def self.total_experience
    total = 0
    self.all.each do |artists|
      total += artists.years_experience 
    end
    return total
  end

  def self.most_prolific
    self.all.each do |artist|
      profit = artist.years_experience / artist.paintings.length
      if profit == 0
        return "No paintings"
      else profit > 0
        return artist.name
      end
    end
  end

  def create_painting(title,price,gallery)
    Painting.new(title, price, self, gallery)
  end
end
