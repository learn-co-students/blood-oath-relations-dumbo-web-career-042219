class Cult

attr_accessor :name, :location, :founding_year, :slogan, :minimum_age

@@all = []

def initialize(name, location, founding_year, slogan, minimum_age)
  @name = name
  @location = location
  @founding_year = founding_year
  @slogan = slogan
  @minimum_age = minimum_age
  @@all << self
end

def all_blood_oath
  BloodOath.all.select do |blood_oath|
    blood_oath.cult == self
  end
end

def followers
  all_blood_oath.map do |blood_oath|
    blood_oath.follower
  end
end

# def recruit_follower(follower)
#   BloodOath.new(follower, self)``
# end

# def recruit_follower(follower)
#   self.age >= follower.minimum_age ? BloodOath.new(follower, self) : (puts "You're too young to join!")
# end

def recruit_follower(follower)
  if follower.age >= self.minimum_age
    BloodOath.new(follower, self)
  else
    "You're too young to join!"
  end
end

def average_age
  followers.map {|follower| follower.age.to_f}.sum / followers.length
end

def my_followers_mottos
  followers.each do |follower|
    puts follower.life_motto
  end
end

def cult_population
  followers.length
end

def self.all
  @@all
end

def self.find_by_name(name)
  self.all.select do |cult|
    cult.name == name
  end
end

def self.find_by_location(location)
  self.all.select do |cult|
    cult.location == location
  end
end

def self.find_by_founding_year(founding_year)
  self.all.select do |cult|
    cult.founding_year == founding_year
  end
end

def self.most_common_location
  locations = self.all.map do |cult|
    cult.location
  end
  locations.max { |location| location.count(location)}
end

end
