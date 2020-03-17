class Instructor

@@all = []

attr_reader :name

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
        # should return all instructors
    end

    def pass_student (student, test_name)
        # should take in a student instance and test name.
        # If there is a BoatingTest whose name and student match the values passed in, 
        # this method should update the status of that BoatingTest to 'passed'
        # If there is no matching test, this method should create a test with the student,
        # that boat test name, and the status 'passed'. Either way, it should return the BoatingTest instance.

        found_test = BoatingTest.all.find{|test| test.test_name == test_name && test.student.first_name == student.first_name}
    if  found_test
        found_test.test_status = "passed"
    else
        found_test = BoatingTest.new(student, test_name, "passed", self)
    end
        found_test
    end

    def fail_student(student, test_name)

        # should take in a student instance and test name.
        # Like #pass_student, it should try to find a matching BoatingTest and update its status to 'failed'.
        # If it cannot find an existing BoatingTest,
        # it should create one with the name, the matching student, and the status 'failed'.
        
        found_test = BoatingTest.all.find{|test| test.test_name == test_name && test.student.first_name == student.first_name}
    if  found_test
        found_test.test_status = "failed"
    else
        found_test = BoatingTest.new(student, test_name, "failed", self)
    end
        found_test
    end



end
