require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("Cult 1", "Location 1", 2019, "Cult 1 rules!", 17)
cult2 = Cult.new("Cult 2", "Location 2", 2010, "Cult 2 is the best!", 18)

follower1 = Follower.new("Follower 1", 16, "Pura Vida")
follower2 = Follower.new("Follower 2", 19, "Live Life")
follower3 = Follower.new("Follower 3", 21, "DO IT")

bloodoath1 = BloodOath.new(follower1, cult1)
bloodoath2 = BloodOath.new(follower2, cult2)
bloodoath3 = BloodOath.new(follower3, cult1)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
