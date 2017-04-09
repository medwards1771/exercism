class Brackets
  class << self
    def paired?(string)
      return true if string == ''
      return false if begins_with_closer?(string[0])
      matching?(clean_up(string)) && nested?(clean_up(string))
    end

    private

    def clean_up(string)
      string.split(//).select do |char|
        ['{', '}', '[', ']', '(', ')'].include?(char)
      end.join
    end

    def begins_with_closer?(char)
      char == '}' || char == ']' || char == ')'
    end

    def matching?(string)
      string = string.tr('{', '(')
      string = string.tr('[', '(')
      string = string.tr('}', ')')
      string = string.tr(']', ')')
      string.count('(') == string.count(')')
    end

    def nested?(string)
      get_sandwich(string)
    end

    def get_sandwich(string)
      first_char_closer_index = find_last_possible_closer_index(string)
      sandwich = string[0, first_char_closer_index + 1]
      matching?(sandwich)
    end

    def find_last_possible_closer_index(string)
      if string[0] == '['
        string.rindex(']')
      elsif string[0] == '{'
        string.rindex('}')
      elsif string[0] == '('
        string.rindex(')')
      end
    end
  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
