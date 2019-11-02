class Instructor
    attr_reader :name

    @@all=[]

    def initialize(name)
        @name = name
        @@all << self
    end 


    def pass_student(student, test_name)
        test_found = BoatingTest.all.find{|t| t.test_name == test_name && t.student==student}
            if test_found != nil   
                test_found.status = "passed"
                return test_found
            else 

                BoatingTest.new(student, test_name, self, "passed")
            end 

    end 

    def fail_student(student_name, test)
        test_found = BoatingTest.all.find{|t| t.test_name == t && t.student==student}
            if test_found != nil
                test_found.status = "failed"
                return test_found
            else 
                BoatingTest.new(student_name, test_name, self,"failed")
            end 
    end 

    def self.all
        @@all
    end 
end
