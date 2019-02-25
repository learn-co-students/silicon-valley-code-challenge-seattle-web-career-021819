require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

fb=Startup.new("social", "facebook", "Zuckerberg")
bill=VentureCapitalist.new("Bill Gates", 50000000.0)
face_found=FundingRound.new(fb, bill, "Type A", 1000000.0)

tesla=Startup.new("tech", "Tesla", "Musk")
bezos=VentureCapitalist.new("Jeff Bezos", 2000000000.0)
tesla_found=FundingRound.new(tesla, bezos, "Type b", 2000000.0)


face_found2=FundingRound.new(fb, bezos, "Type C", 100000.0)

# fb.pivot("new", "Bookface")
# puts
# p face_found

binding.pry
0 #leave this here to ensure binding.pry isn't the last line