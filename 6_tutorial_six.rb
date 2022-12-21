print "Enter Title : "
title = gets.chomp()

print "Enter Note : "
note = gets.chomp()

print "Enter save/cancle : "
choose = gets.chomp()

if choose == "save"
  File.open("tutorial_file/#{title}.txt", "w") do |file|     
    file.write(note)   
  end
  puts "The file title is #{title}"
  puts "The file note is #{note}"
end