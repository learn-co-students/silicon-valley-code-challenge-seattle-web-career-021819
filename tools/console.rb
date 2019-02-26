require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

startup1 = Startup.new("No Reservations", "Anthony Bourdain", "Travel Channel")
startup2= Startup.new("Bizarre Foods", "Andrew Zimmern", "Travel Channel")
startup3= Startup.new("Triple D", "Guy Fieri", "Food Network")

vc1 =VentureCapitalist.new("Bill Gates", 97_000_000_000)
vc2 =VentureCapitalist.new("Jeff Bezos", 134_000_000_000)
vc3 =VentureCapitalist.new("Bethenny Freankel", 100_000_000)
vc4 =VentureCapitalist.new("Ashton Kutcher", 200_000_000)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
