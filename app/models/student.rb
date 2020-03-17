class Student

    @@all = []

    attr_reader :first_name

    def initialize (first_name)
        @first_name = first_name
        # should initialize with first_name
        @@all << self 
    end

    def self.all
        @@all
        # should return all of the student instances
    end

    def add_boating_test(boating_test_name, boating_test_status, instructor)
        BoatingTest.new(self, boating_test_name, boating_test_status, instructor)
        # should initialize a new boating test with a Student (Object), 
        # a boating test name (String), a boating test status (String), and an Instructor (Object)
    end

    def self.find_student(first_name)
        @@all.find{|student| student.first_name == first_name}
        # will take in a first name and output the student (Object) with that name
    end

    def grade_percentage
        passing_tests = BoatingTest.select{|test| test.test_status == "passed"}.length.to_f

        all_tests = tests.length.to_f
        passing_tests / all_tests * 100

        # should return the percentage of tests that the student has passed, 
        # a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)
    end
    
    
    


end
