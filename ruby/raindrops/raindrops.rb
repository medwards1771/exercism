class Raindrops
  def self.convert(integer)
    string = ''
    string += 'Pling' if (integer % 3).zero?
    string += 'Plang' if (integer % 5).zero?
    string += 'Plong' if (integer % 7).zero?
    string == '' ? integer.to_s : string
  end
end

module BookKeeping
  VERSION = 3
end
