class Bottle
  def initialize
    self.fill
  end

  def drink
    @water -= 10 unless @water.zero?
  end

private
  def fill
    @water = 100
  end
end
