require_relative '../config/environment.rb'
require 'pry'
def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Startup.new("No Reservations", "Anthony Bourdain", "Travel Channel")
s2= Startup.new("Bizarre Foods", "Andrew Zimmern", "Travel Channel")
s3= Startup.new("Triple D", "Guy Fieri", "Food Network")

vc1 =VentureCapitalist.new("Bill Gates", 97_000_000_000)
vc2 =VentureCapitalist.new("Jeff Bezos", 134_000_000_000)
vc3 =VentureCapitalist.new("Bethenny Freankel", 100_000_000)
vc4 =VentureCapitalist.new("Ashton Kutcher", 200_000_000)

f1=FundingRound.new(s1, vc1, "Angel", 2_000_000 )
f2=FundingRound.new(s2, vc2, "Pre-Seed", 1_000_000)
f3=FundingRound.new(s3, vc3, "Seed", 10_000)
f4=FundingRound.new(s1, vc4, "Series A", 200_000)
f5=FundingRound.new(s2, vc2, "Seed", 20_000)
f6=FundingRound.new(s3, vc1, "Angel", 90_000)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
