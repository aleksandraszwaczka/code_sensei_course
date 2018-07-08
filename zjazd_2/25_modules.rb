class Player
  include Comparable

  attr_reader :score

  def initialize(score)
    @score = score
  end

  def <=>(other)
    @score <=> other.score
# żeby zamienić wyniki (odczyt), że mniejszy jest silniejszy to tylko zamieniamy miejsca
#   other.score <=> @score

#można też zastąpić to takim zapisem
    # if @score < other.score
    #   -1
    # elsif @score > other.score
    #   1
    # else
    #   0
    # end
  end
end

player_1 = Player.new(10)
player_2 = Player.new(12)
player_3 = Player.new(8)
player_4 = Player.new(10)

puts player_1 < player_2
puts player_1 >= player_3
puts player_1 != player_4
