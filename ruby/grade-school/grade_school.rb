class School
  attr_accessor :students_by_grade

  def initialize
    @students_by_grade = []
  end

  def students(grade)
    if students_by_grade.find { |hash| hash[:grade] == grade }
       students_by_grade.find { |hash| hash[:grade] == grade }[:students]
    else
       []
     end
  end

  def add(name, grade)
    if students_by_grade.find { |hash| hash[:grade] == grade }
      students_by_grade.find { |hash| hash[:grade] == grade }[:students] << name
    else
      students_by_grade << { :grade => grade, :students => [name] }
    end
    @students_by_grade = @students_by_grade.map { |hash| { :grade => hash[:grade], :students => hash[:students].sort } }
    # @students_by_grade = @students_by_grade.sort
    # binding.pry
  end
end
