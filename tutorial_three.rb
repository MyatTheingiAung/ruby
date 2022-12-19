loop do 
    print "Enter First Number : "
    num1 = gets.chomp().to_i

    print "Enter operator +,-,*,/ : "
    oper = gets.chomp()

    while oper != "+" and oper !="-" and oper != "*" and oper != "/"
        print "Enter operator +,-,*,/ : "
        oper = gets.chomp()
    end

    print "Enter Second Number : "
    num2 = gets.chomp().to_i

    case oper
    when "+"
        puts "result is #{num1 + num2}"
    when "-"
        puts "result is #{num1 - num2}"
    when "*"
        puts "result is #{num1 * num2}"
    when "/"
        puts "result is #{num1 / num2}"
    end

    print "Enter stop / containue : "
    flag = gets.chomp()
    if flag == "stop"
        break
    end
end 

    