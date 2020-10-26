class Ship
  @@all = []

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
  attr_accessor :name, :type, :booty

  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]
    self.save
  end

  def save
    self.class.all << self
  end
end
