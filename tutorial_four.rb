print "Enter array length : "
size = gets.chomp().to_i
animal_array = []
while size > 10 
    print "Maximum length is 10. Enter array length : "
    size = gets.chomp().to_i
end

for i in 0...size do
    print "Enter array value : "
    animal = gets.chomp()
    animal_array.push(animal)
end

print "Animal Array is #{animal_array.sort}\n"

unique_array = animal_array.uniq
print "Unique Array is #{unique_array}\n"

print "Array Reverse is #{unique_array.reverse()}"
