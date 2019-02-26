class VentureCapitalist
  @@all = []

  attr_reader :name, :total_worth

  def initialize(name, total_worth)
    @name = name
    @total_worth = total_worth
    @@all << self
  end

  def self.tres_commas_club
    @@all.select do |vc|
      vc.total_worth > 1_000_000_000
    end
  end

  def self.all
    @@all
  end

end
