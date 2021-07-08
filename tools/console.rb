require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

fancy_face = Startup.new("Fancy Face", "Robert Langdon", "Medicine")
pewp = Startup.new("pewp", "pepe", "power")
other = Startup.new("other", "person", "doing things")

# Startup.find_by_founder("Robert Langdon")
# Startup.domains


pepe = VentureCapitalist.new("Pepe", 2000000000)
opop = VentureCapitalist.new("Opop", 3000000000)
peter = VentureCapitalist.new("Peter", 350000000)


FundingRound.new(fancy_face, pepe, "Angel", 10000)
FundingRound.new(fancy_face, peter, "Angel", 10000)
FundingRound.new(fancy_face, opop, "Angel", 10000)
FundingRound.new(pewp, opop, "Seed", 30000)
FundingRound.new(other, peter, "Pre-seed", 45000)





# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
