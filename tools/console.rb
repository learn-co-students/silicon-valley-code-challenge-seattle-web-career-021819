require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Startup.new("WeWork", "Adam", "Housing")
s2 = Startup.new("Reddit", "Alexis", "Tech")
s3 = Startup.new("MyCodeBuilder", "David", "Tech")
s4 = Startup.new("Zillow", "Richard", "Housing")
s5 = Startup.new("Airbnb", "Brian", "Housing")

v1 = VentureCapitalist.new("Richie")
v2 = VentureCapitalist.new("Goldworth")
v3 = VentureCapitalist.new("Earnington")
v4 = VentureCapitalist.new("Bradwinner")
v5 = VentureCapitalist.new("Wallace")

FundingRound.new(v1, s1, "Angel", 750000)
FundingRound.new(v1, s3, "Seed", 100000)
FundingRound.new(v1, s4, "Series A", 25000)
FundingRound.new(v1, s5, "Series B", 10000)

FundingRound.new(v2, s1, "Angel", 200000)
FundingRound.new(v2, s2, "Pre-Seed", 50000)
FundingRound.new(v2, s4, "Series A", 25000)
FundingRound.new(v2, s5, "Series B", 10000)

FundingRound.new(v3, s2, "Pre-Seed", 50000)
FundingRound.new(v3, s3, "Seed", 100000)
FundingRound.new(v3, s5, "Series B", 10000)

FundingRound.new(v4, s1, "Angel", 200000)
FundingRound.new(v4, s2, "Pre-Seed", 50000)

FundingRound.new(v5, s1, "Angel", 1500000)

s5.sign_contract(v4, "Seed", 500000)
v5.offer_contract(s4, "Series A", 100000)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
