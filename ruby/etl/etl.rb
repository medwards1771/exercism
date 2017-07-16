class ETL
  def self.transform(old_data)
    new_data = {}
    old_data.map do |value, letter_array|
      letter_array.each do |letter|
        new_data["#{letter.downcase}"] = value
      end
    end
    new_data
  end
end

module BookKeeping
  VERSION = 1
end
