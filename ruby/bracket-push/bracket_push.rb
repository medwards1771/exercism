class Brackets
  def self.paired?(string)
    return true if string == ''
    return false if begins_with_closer?(string[0])
    string = clean_up(string)
    return false unless string.delete('').size.even?
    return true if matching?(string) && nested?(string)
  end

  def self.clean_up(string)
    string.split(//).select do |char|
      ['{', '}', '[', ']', '(', ')'].include?(char)
    end.join
  end

  def self.begins_with_closer?(char)
    char == '}' || char == ']' || char == ')'
  end

  def self.matching?(string)
    string = string.tr('{', '(')
    string = string.tr('[', '(')
    string = string.tr('}', ')')
    string = string.tr(']', ')')
    string.count('(') == string.count(')')
  end

  def self.nested?(string)
    get_sandwich(string)
  end

  def self.get_sandwich(string)
    first_char_closer_index = find_last_possible_closer_index(string)
    sandwich = string[0, first_char_closer_index + 1]
    matching?(sandwich)
  end

  def self.find_last_possible_closer_index(string)
    if string[0] == '['
      if string.count(']') > 1
        string.rindex(']')
      else
        string.index(']')
      end
    elsif string[0] == '{'
      if string.count('}') > 1
        string.rindex('}')
      else
        string.index('}')
      end
    elsif string[0] == '('
      if string.count(')') > 1
        string.rindex(')')
      else
        string.index(')')
      end
    end
  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
