class Raindrops
  def self.convert(integer)
    string = ''
    if integer % 3 ==0
      string += 'Pling'
    end
    if integer % 5 == 0
      string += 'Plang'
    end
    if integer % 7 == 0
      string += 'Plong'
    end
    string == '' ? integer.to_s : string
  end
end

module BookKeeping
  VERSION = 3
end
