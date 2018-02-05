class Game
  attr_writer :score, :running_total

  def initialize
    @roll = Roll.new
    @frame = Frame.new
  end

  def roll(pins)
    add_pins_to_running_total(pins)
    add_pins_to_score(pins)
  end

  def score
    @score ||= 0
  end

  def running_total
    @running_total ||= 0
  end

  def add_pins_to_score(pins)
    if @roll.spare
      self.score = score + pins
    else
      self.score = score + pins
    end
  end

  def add_pins_to_running_total(pins)
    self.running_total = running_total + pins
  end

  def check_if_spare
    if running_total == 10
      @roll.spare = true
    else
      @roll.spare = false
    end
  end
end

class Roll
  attr_accessor :spare
end

class Frame
  attr_writer :number

  def number
    @number ||= 1
  end
end
