class BloodOath

  attr_accessor :follower_instance, :cult_instance

  @@all = []

  def initialize(follower_instance, cult_instance)
    @follower_instance = follower_instance
    @initiation_date = Time.now
    @cult_instance = cult_instance
    @@all << self
  end

  def self.all
      @@all
  end



end
