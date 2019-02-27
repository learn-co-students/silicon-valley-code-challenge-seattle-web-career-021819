class VentureCapitalist

  attr_reader :total_worth, :name

  @@all = []

  def initialize(name, total_worth)
    @name = name
    @total_worth = total_worth

    @@all << self

  end

  def self.all
    @@all
  end

  def total_worth
    @total_worth
  end

  def self.tres_commas_club
   rich_array = []
    self.all.each do |person|
      if person.total_worth > 1_000_000_000
        rich_array << person.name
        #binding.pry
      end
     end
    rich_array
  end
end
