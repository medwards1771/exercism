class Game
  def roll(pins)
    all_pins << pins
  end

  def score
    sum = 0
    indices = []
    all_pins.each_with_index do |pin, index|
      sum = sum + pin
      if strike?(pin) && index < 18
        indices << index + 1
        indices << index + 2
        sum = 0
      elsif spare?(sum) && index < 18
        indices << index + 1
        sum = 0
      end
    end
    if indices.empty?
      sum
    else
      original_values = all_pins.dup
      indices.each do |index|
        p "!!! #{all_pins[index]} !!!#{index}"
        all_pins[index] = (all_pins[index] + original_values[index])
      end
      all_pins.reduce(:+)
    end
  end

  private

  def all_pins
    @all_pins ||= []
  end

  def spare?(sum)
    sum == 10
  end

  def strike?(pin)
    pin == 10
  end
end
