# Refactor Goals:
# compare performance of sorting at the end vs. adding in 'sorted' order
# get rid of if/else logic and find better way to deal with students == []
# figure out why this test uses an array of hashes to store data
# ^^bc isn't { '1': [], '2': [] } easier to parse than
# [{ grade: 1, students: [] }, {grade: 1, students: [] }]

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
      students_by_grade << { grade: grade, students: [name] }
    end
    sort_students
  end

  private

  def sort_students
    @students_by_grade = students_by_grade.map do |hash|
      { grade: hash[:grade], students: hash[:students].sort }
    end
    @students_by_grade = students_by_grade.sort_by { |hash| hash[:grade] }
  end
end

module BookKeeping
  VERSION = 3
end
