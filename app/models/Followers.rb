class Follower

  attr_accessor :name, :age, :life_motto, :cults

  @@all = []

  def initialize(name, age, life_motto, cults)
    @name = name
    @age = age
    @life_motto = life_motto
    @cults = cults
    @@all << self
  end

  def self.all
    @@all
  end

  def join_cult(cult_instance)
    BloodOath.new(self, cult_instance)
  end

  def self.of_a_certain_age(age)
    # takes a `Fixnum` argument that is an age and returns an `Array` of followers who are the given age or older
  end


end
