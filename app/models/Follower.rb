class Follower

attr_accessor :name, :age, :life_motto

@@all = []

def initialize(name, age, life_motto)
  @name = name
  @age = age
  @life_motto = life_motto
  @@all << self
end

def all_blood_oath
  BloodOath.all.select do |blood_oath|
    blood_oath.follower == self
  end
end

def cults
  all_blood_oath.map do |blood_oath|
    blood_oath.cult
  end
end

# def join_cult(cult)
#   BloodOath.new(self, cult)
# end

# def join_cult(cult)
#   self.age >= cult.minimum_age ? BloodOath.new(self, follower) : (puts "You're too young to join!")
# end

def join_cult(cult)
  if self.age >= cult.minimum_age
    BloodOath.new(self, cult)
  else
    "You're too young to join!"
  end
end

def self.all
  @@all
end

def self.of_a_certain_age(age)
  self.all.select do |follower|
    follower.age >= age
  end
end

def fellow_cult_members
  @@all.select {|follower| follower.cults.sort_by(&:name) == self.cults.sort_by(&:name) && follower != self}.uniq
end

end
