require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# instantiate some startups
company1 = Startup.new("B&O", "Rick Steves", "Travel the World")
company2 = Startup.new("Uber", "Travis Kalanick", "Uber Ltd.")

# instantiate some VC
vc1 = VentureCapitalist.new("Golden Parachute", 1_500_000_000)
vc2 = VentureCapitalist.new("Golden Goose", 500_000)
vc3 = VentureCapitalist.new("Poor Peasant", 2_000_000_000)

#initialize funding round
fr1 = FundingRound.new(company1, vc1, "Angel", 50_000)
fr2 = FundingRound.new(company2, vc2, "Pre-Seed", -50_000)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
