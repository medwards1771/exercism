class Robot
  attr_reader :name

  def initialize
    @name = generate_name
    # reset if self.class.all.map{ |robot| robot.name }.include? @name
  end

  def reset
    @name = generate_name
  end

  private
  def generate_name
    generate_letters
    generate_numbers
    "#{generate_letters}#{generate_numbers}"
  end

  def generate_letters
    (1..2).map { ('a'..'z').to_a[rand(26)] }.join.upcase
  end

  def generate_numbers
    rand(100...999)
  end
end

module BookKeeping
  VERSION = 2
end
