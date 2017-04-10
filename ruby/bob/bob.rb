class Bob
  class << self
  def hey(remark)
    remark = Remark.new(remark)
    return 'Whoa, chill out!' if remark.exclamation?
    return 'Sure.' if remark.question?
    return 'Fine. Be that way!' if remark.empty?
    'Whatever.'
  end
  end
end

class Remark
  def initialize(remark)
    @remark = remark
  end

  def exclamation?
    remark == remark.upcase && remark[/[a-zA-Z]/]
  end

  def question?
    remark[-1] == '?'
  end

  def empty?
    !/\w+/.match(remark)
  end

  private

  attr_reader :remark
end
