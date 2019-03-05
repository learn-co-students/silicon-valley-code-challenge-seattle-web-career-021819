require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

blob = Startup.new("Blob", "John Smith", "blob.com")
clock = Startup.new("Clock", "Betty White", "clock.com")
mesh = Startup.new("Mesh", "Lou Some", "mesh.com")

chuck = VentureCapitalist.new("Chuck", 100000000)
bill = VentureCapitalist.new("Bill", 999999)


fr1 = FundingRound.new(blob, chuck, "C", 10000000)
fr2 = FundingRound.new(clock, chuck, "C", 500000)
fr3 = FundingRound.new(mesh, bill, "A", 750000)
fr4 = FundingRound.new(blob, bill, "A", 10000000)

puts "all startups"
puts Startup.all
puts

puts "Change Name"
puts blob.pivot("Blog", "Blog.com")
puts

puts "find by founder"
puts Startup.find_by_founder("Betty White")
puts

puts "All Domains"
puts Startup.domains

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
