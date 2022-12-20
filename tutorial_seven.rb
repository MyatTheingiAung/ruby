class Person
    attr_accessor :name

    def print_name()
        puts "Person name is #{name}"
    end
end

class Student < Person
    attr_accessor :name , :roll_number

    def print_roll()
        puts "Student roll number is #{roll_number}"
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
    person.name = name
    person.print_name()
else
    print "Enter name : "
    name = gets.chomp()
    print "Enter roll number : "
    roll_number = gets.chomp()
    student = Student.new
    student.name = name
    student.print_name()
    student.roll_number = roll_number
    student.print_roll()
end
