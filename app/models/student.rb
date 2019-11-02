class Student
  attr_reader :student_name

  @@all = []

  def initialize(student_name)
    @student_name = student_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, status, instructor)
    BoatingTest.new(self, test_name, status, instructor)
  end

  def self.find_student(student_name)
    self.all.find { |st| st.student_name == student_name }
    # self.all.find {|student}
    #we use find method , because the lab is asking te return the first result
  end

  def test
    BoatingTest.all.select { |t| t.student == self }
  end

  def passed
    test.select { |t| t.status == "passed" }
  end

#   def failed
#     test.select { |t| t.status == "failed" }
#   end

  def grade_percentage
    total = test.length 
    passed_test = passed.length
    (passed_test.to_f/total)*100
  end
end
