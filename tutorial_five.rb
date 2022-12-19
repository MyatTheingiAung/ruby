require 'date'

today = DateTime.now().strftime("%A")

week = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]
result = []
count = 0

for i in 0...week.length()
    if today == week[i]
        count = i
    end
end

for j in 1..5
    count = count -1
    result.push(week[count])
end

puts "Today is - #{today}"
puts "Last 5 days is - #{result}"