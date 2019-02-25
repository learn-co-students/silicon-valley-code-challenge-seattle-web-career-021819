require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
goggle = Startup.new("Goggle", "Bob", "Search Engine")
music = Startup.new("Music", "Steve", "Music Streaming")

mm1 = VentureCapitalist.new("Money Man1",1999000)
mm2 = VentureCapitalist.new("Money Man2",1000000001)

fr1 = FundingRound.new(goggle, mm1, "Angel",500)
fr2 = FundingRound.new(goggle, mm2, "Pre-Seed",1000)
fr3 = FundingRound.new(music, mm2, "Series A",10000)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
