require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


ada = VentureCapitalist.new("Ada", 7000000000.0)
billie = VentureCapitalist.new("Billie", 3000000000.0)
clara = VentureCapitalist.new("Clara", 2000.0)
daria = VentureCapitalist.new("Daria", 5000.0)
eleanor = VentureCapitalist.new("Eleanor", 1000.0)

kirby = Startup.new("Kirby", "the gay scientist who invented Kirby", "bioweaponry")
megaman = Startup.new("Megaman", "Dr. Light", "bioweaponry")
link = Startup.new("Link", "Princess Zelda", "public transit")

## types = Angel, Pre-Seed, Seed, Series A, Series B, Series C
# kirby: ada, billie, clara
# megaman: billie, clara, daria
# link: clara, daria, Eleanor
round1 = FundingRound.new(kirby, ada, "Angel", 1000000000.0)
round2 = FundingRound.new(kirby, billie, "Angel", 1000000000.0)
round3 = FundingRound.new(kirby, clara, "Pre-Seed", 1000.0)

round4 = FundingRound.new(megaman, billie, "Pre-Seed", 1000000000.0)
round5 = FundingRound.new(megaman, clara, "Seed", 500.0)
round6 = FundingRound.new(megaman, daria, "Series A", 1000.0)

round7 = FundingRound.new(link, clara, "Angel", 100.0)
round8 = FundingRound.new(link, daria, "Series A", 1000.0)
round9 = FundingRound.new(link, eleanor, "Series B", 1000.0)












binding.pry
0 #leave this here to ensure binding.pry isn't the last line
