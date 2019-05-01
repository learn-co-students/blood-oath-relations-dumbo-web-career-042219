require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

karesh = Cult.new("Karesh", "Waco", 1972, "Burn baby burn")
koolAidClub = Cult.new("koolAidClub", "Yonder", 1998, "Oh yeahhh")

joe = Follower.new("Joe", 25, "Life sucks", karesh)
bob = Follower.new("Bob", 30, "Life ROCKS", karesh)
jill = Follower.new("Jill", 40, "What's a motto?", koolAidClub)
sara = Follower.new("Sara", 16, "Parents suck", koolAidClub)

firstoath = BloodOath.new(joe, karesh)
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
