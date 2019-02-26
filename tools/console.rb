require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

apple = Startup.new("Apple", "Steve Jobs", "apple.com")
microsoft = Startup.new("Microsoft", "Bill Gates", "microsoft.com")
ibm = Startup.new("IBM", "Charles Flint", "ibm.com")

claire_muller = VentureCapitalist.new("Claire Muller", 2_000_000_000)
kristen_eason = VentureCapitalist.new("Kristen Eason", 200_000)
jesse_botello = VentureCapitalist.new("Jesse Botello", 4_000_000_000)
molly_ford = VentureCapitalist.new("Molly Ford", 4_000_000_000)
sam_coronado = VentureCapitalist.new("Sam Coronado", 4_000_000)

round_1 = FundingRound.new(apple, claire_muller, "Angel", 10)
round_2 = FundingRound.new(microsoft, kristen_eason, "Seed", 20)
round_3 = FundingRound.new(apple, jesse_botello, "Series A", 30)
round_4 = FundingRound.new(ibm, kristen_eason, "Angel", 40)
round_5 = FundingRound.new(ibm, claire_muller, "Series B", 50)
round_6 = FundingRound.new(apple, sam_coronado, "Angel", 60)
round_7 = FundingRound.new(ibm, claire_muller, "Series C", 40)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
