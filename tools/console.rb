require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

st1 = Student.new('serg')
st2 = Student.new('someone')

inst1 = Instructor.new("anastasia")
inst2 = Instructor.new("pepito")

bt1= BoatingTest.new(st1,"test1",inst1,"passed")
bt1= BoatingTest.new(st1,"test2",inst1,"failed")
bt1= BoatingTest.new(st1,"test3",inst1,"failed")
bt1= BoatingTest.new(st1,"test4",inst2,"passed")

bt2= BoatingTest.new(st2,"test1",inst1,"passed")
bt2= BoatingTest.new(st2,"test2",inst2,"failed")
bt2= BoatingTest.new(st2,"test3",inst1,"passed")

# puts "checking find_student"
# puts Student.find_student("serg")
# puts Student.all
# puts Instructor.all
# puts "checking add_boating_test"
# puts st2.add_boating_test("test4","failed",inst2)

# puts "checkin all student name on boating test"
# BoatingTest.all.each{|t| puts t.student.student_name}

# puts "checking pass_student"
# puts inst1.pass_student(st1, "test2").test_name
# puts "checking grade_percentage"
# puts st1.grade_percentage
# binding.pry
0 #leave this here to ensure binding.pry isn't the last line

# ruby tools/console.rb to run the test
