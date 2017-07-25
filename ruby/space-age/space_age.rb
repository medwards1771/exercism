class SpaceAge
  attr_reader :seconds

  def initialize(seconds)
    @seconds = seconds
  end

  def on_earth
    seconds / seconds_in_an_earth_year
  end

  def on_mercury
    seconds / (seconds_in_an_earth_year * translations[:mercury])
  end

  def on_venus
    seconds / (seconds_in_an_earth_year * translations[:venus])
  end

  def on_mars
    seconds / (seconds_in_an_earth_year * translations[:mars])
  end

  def on_jupiter
    seconds / (seconds_in_an_earth_year * translations[:jupiter])
  end

  def on_saturn
    seconds / (seconds_in_an_earth_year * translations[:saturn])
  end

  def on_uranus
    seconds / (seconds_in_an_earth_year * translations[:uranus])
  end

  def on_neptune
    seconds / (seconds_in_an_earth_year * translations[:neptune])
  end

  private

  def translations
    {
      earth: 1.00,
      mercury: 0.2408467,
      venus: 0.61519726,
      mars: 1.8808158,
      jupiter: 11.862615,
      saturn: 29.447498,
      uranus: 84.016846,
      neptune: 164.79132
    }
  end

  def seconds_in_an_earth_year
    31557600.00
  end
end

module BookKeeping
  VERSION = 1
end
