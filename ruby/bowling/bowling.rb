class Game
  class BowlingError < StandardError
  end

  def roll(pins)
    raise BowlingError if (pins < 0 || pins > 10 || frame_sum > 10)
    all_pins << pins
  end

  def score
    frame_sum = 0
    total_sum = 0
    frame = 'uncategorized'
    frame_index = 1
    pin_index = 0
    all_pins.each do |pin|
      frame_sum += pin
      total_sum += pin
      pin_index += 1
      raise BowlingError if frame_sum > 10
      if frame_sum == 10 && (frame == 'uncategorized' || frame == 'strike') && frame_index < 10
        frame = 'strike'
        frame_index += 1
        frame_sum = 0
        total_sum += all_pins[pin_index]
        total_sum += all_pins[pin_index + 1]
      elsif frame_sum == 10 && frame_index < 10
        frame = 'spare'
        frame_index += 1
        frame_sum = 0
        total_sum += all_pins[pin_index]
      elsif frame_sum == 10 && frame_index == 10
        frame_sum = 0
      elsif frame == 'uncategorized' && frame_index == 10
        frame = 'open_frame'
      elsif frame == 'uncategorized'
        frame = 'open_frame'
      elsif frame == 'open_frame'
        frame = 'uncategorized'
        frame_index += 1
        frame_sum = 0
      end
    end
    total_sum
  end

  # still opting to calculate score at the end instead of as you go along

  private

  def all_pins
    @all_pins ||= []
  end

  def spare?(sum)
    sum == 10
  end

  # the difference between a spare and a strike is 1 and 2 rolls.
  # sum and pin don't capture this difference very well

  def strike?(pin)
    pin == 10
  end
end
