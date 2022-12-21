class Person
    @name

    def print_name(name)
        @name = name
        p "Person name is #{@name}"
    end
end

class Student < Person
    attr_accessor :name , :roll_number
    def initialize(name, roll_number)
        @name = name
        @roll_number = roll_number
    end

    def print_roll()
        puts "Student roll number is #{@roll_number}"
    end
end

print "Choose Person / Student : "
choose = gets.chomp()

while choose != "Person" and choose != "Student" 
    print "Choose correct name again : "
    choose = gets.chomp()
end

if choose == "Person"
    print "Enter name : "
    name = gets.chomp()
    person = Person.new()
    person.print_name(name)
else
    print "Enter name : "
    name = gets.chomp()
    print "Enter roll number : "
    roll_number = gets.chomp()
    student = Student.new(name,roll_number)
    # student.name = name
    student.print_name()
    # student.roll_number = roll_number
    student.print_roll()
end
