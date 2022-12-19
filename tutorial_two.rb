require 'date'

print "Enter your birth Year : "
birth_year = gets.chomp().to_i

print "Enter your birth month : "
birth_month = gets.chomp().to_i

while birth_month > 12
    print "Month is 1 to 12. Enter your birth month : "
    birth_month = gets.chomp().to_i
end

print "Enter your birth days : "
birth_day = gets.chomp().to_i

while birth_day > 31 
    print "Day is 1 to 31. Enter your birth days : "
    birth_day = gets.chomp().to_i
end

if birth_month == 2
    if Date.leap?( birth_year ) 
        while birth_day > 29
            print "Day is 1 to 29. Enter your birth days : "
            birth_day = gets.chomp().to_i
        end
    elsif
        while birth_day > 28
            print "Day is 1 to 28. Enter your birth days : "
            birth_day = gets.chomp().to_i
        end
    end
end

if birth_month == 4 or birth_month == 6 or birth_month == 9 or birth_month == 11
    while birth_day > 30
        print "Day is 1 to 30. Enter your birth days : "
        birth_day = gets.chomp().to_i
    end
end

now = DateTime.now()

year = now.year - birth_year

if now.month < birth_month
    year = year - 1
    month = (now.month + 12) - birth_month
else
    month = now.month - birth_month
end

if now.day < birth_day

    month = month != 0? month - 1 : month

    if birth_month == 4 or birth_month == 6 or birth_month == 9 or birth_month == 11
        day = (now.day + 30) - birth_day
    elsif birth_month == 2
        if Date.leap?( now.year ) 
            day = (now.day + 29) - birth_day
        else 
            day = (now.day + 28) - birth_day
        end
    else 
        day = (now.day + 31) - birth_day
    end
else
    day = now.day - birth_day
end

puts "Your age is #{year} years, #{month} months, #{day} days."

if year <= 18 
    puts "child"
else
    puts "adult"
end
