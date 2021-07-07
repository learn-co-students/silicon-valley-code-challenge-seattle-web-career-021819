require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

startup1 = Startup.new("startup1", "Mike", "ecommerce")
startup2 = Startup.new("startup2", "Seth", "retail")
startup3 = Startup.new("startup3", "Ricky", "sports")
startup4 = Startup.new("startup4", "Leanne", "ecommerce")

mark = VentureCapitalist.new("Mark", 5_000_000_000)
sally = VentureCapitalist.new("Sally", 7_000_000_000)
ally = VentureCapitalist.new("Ally", 9_000_000_000)

round1 = FundingRound.new(mark, startup1, "Angel", 55)
round2 = FundingRound.new(sally, startup2, "Series A", 75)

puts round1.inspect


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
