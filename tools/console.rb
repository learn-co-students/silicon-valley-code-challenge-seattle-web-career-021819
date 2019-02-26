require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

dogs = Startup.new( "Dogs", "Mr. Ruff", "canines")
cats = Startup.new( "Cats", "Mr. Meow", "felines")

puts dogs.name
puts cats.founder

jen = VentureCapitalist.new("Jen", 1_000_000_500)
claire = VentureCapitalist.new("Claire", 1_800_000_000)
chris = VentureCapitalist.new("Chris", 50)

round1 = FundingRound.new(jen, dogs, 1_000_000)
round2 = FundingRound.new(chris, dogs, 25)
round3 = FundingRound.new(claire, cats, 500)
round4 = FundingRound.new(jen, dogs, 1_000)


round1.type = "Angel"



#dogs.pivot("Squirrels", "woodland creatures")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
