class Cohort < ActiveRecord::Base
  has_many :students

  def add_student(name, age)
    Student.create(name: name, age: age, cohort_id: self.id)
  end

  def average_age
    self.students.average(:age).to_f
  end

  def total_students
    self.students.count.to_i
  end

  def self.biggest
    self.all.max_by {|c| c.students.count}
  end

  def self.sort_by_mod
    Cohort.order(:current_mod)
  end
end