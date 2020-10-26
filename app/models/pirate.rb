class Pirate
  @@all = []

  def self.all
    @@all
  end
  attr_accessor :name, :weight, :height

  def initialize(args)
    @name = args[:name]
    @weight = args[:weight]
    @height = args[:height]
    self.save
  end

  def save
    self.class.all << self
  end
end
