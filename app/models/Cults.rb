class Cult

  attr_accessor :name, :location, :founding_year, :slogan

  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@all << self
  end

  def self.all
    @@all
  end

  def recruit_follower(follower_instance)
    BloodOath.new(follower_instance, self)
  # takes in an argument of a `Follower` instance and adds them to this cult's list of followers
  end

  def cult_population
    our_followers = BloodOath.all.select {|bloodoath| bloodoath.cult_instance == self}
    our_followers.length
  # returns a `Fixnum` that is the number of followers in this cult
  end


  def self.find_by_name(name)
    self.all.find {|cults| cults.name == name}
    # takes a `String` argument that is a name and returns a `Cult` instance whose name matches that argument
  end

  def self.find_by_location(location)
    self.all.select {|cults| cults.location == location}
    # takes a `String` argument that is a location and returns an `Array` of cults that are in that location
  end

  def self.find_by_founding_year(year)
    self.all.select {|cults| cults.founding_year == self.founding_year}
    # takes a `Fixnum` argument that is a year and returns all of the cults founded in that year
  end

end
